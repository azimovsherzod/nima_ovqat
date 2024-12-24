import 'package:equatable/equatable.dart';

class CategoryModel extends Equatable {
    CategoryModel({
        required this.id,
        required this.count,
        required this.description,
        required this.link,
        required this.name,
        required this.slug,
        required this.taxonomy,
        required this.meta,
        required this.acf,
        required this.links,
    });

    final int id;
    final int count;
    final String description;
    final String link;
    final String name;
    final String slug;
    final String taxonomy;
    final List<dynamic> meta;
    final Acf? acf;
    final Links? links;

    CategoryModel copyWith({
        int? id,
        int? count,
        String? description,
        String? link,
        String? name,
        String? slug,
        String? taxonomy,
        List<dynamic>? meta,
        Acf? acf,
        Links? links,
    }) {
        return CategoryModel(
            id: id ?? this.id,
            count: count ?? this.count,
            description: description ?? this.description,
            link: link ?? this.link,
            name: name ?? this.name,
            slug: slug ?? this.slug,
            taxonomy: taxonomy ?? this.taxonomy,
            meta: meta ?? this.meta,
            acf: acf ?? this.acf,
            links: links ?? this.links,
        );
    }

    factory CategoryModel.fromJson(Map<String, dynamic> json){ 
        return CategoryModel(
            id: json["id"] ?? 0,
            count: json["count"] ?? 0,
            description: json["description"] ?? "",
            link: json["link"] ?? "",
            name: json["name"] ?? "",
            slug: json["slug"] ?? "",
            taxonomy: json["taxonomy"] ?? "",
            meta: json["meta"] == null ? [] : List<dynamic>.from(json["meta"]!.map((x) => x)),
            acf: json["acf"] == null ? null : Acf.fromJson(json["acf"]),
            links: json["_links"] == null ? null : Links.fromJson(json["_links"]),
        );
    }

    @override
    List<Object?> get props => [
    id, count, description, link, name, slug, taxonomy, meta, acf, links, ];
}

class Acf extends Equatable {
    Acf({
        required this.imageCategory,
    });

    final ImageCategory? imageCategory;

    Acf copyWith({
        ImageCategory? imageCategory,
    }) {
        return Acf(
            imageCategory: imageCategory ?? this.imageCategory,
        );
    }

    factory Acf.fromJson(Map<String, dynamic> json){ 
        return Acf(
            imageCategory: json["image_category"] == null ? null : ImageCategory.fromJson(json["image_category"]),
        );
    }

    @override
    List<Object?> get props => [
    imageCategory, ];
}

class ImageCategory extends Equatable {
    ImageCategory({
        required this.title,
        required this.url,
        required this.target,
    });

    final String title;
    final String url;
    final String target;

    ImageCategory copyWith({
        String? title,
        String? url,
        String? target,
    }) {
        return ImageCategory(
            title: title ?? this.title,
            url: url ?? this.url,
            target: target ?? this.target,
        );
    }

    factory ImageCategory.fromJson(Map<String, dynamic> json){ 
        return ImageCategory(
            title: json["title"] ?? "",
            url: json["url"] ?? "",
            target: json["target"] ?? "",
        );
    }

    @override
    List<Object?> get props => [
    title, url, target, ];
}

class Links extends Equatable {
    Links({
        required this.self,
        required this.collection,
        required this.about,
        required this.wpPostType,
        required this.curies,
    });

    final List<Self> self;
    final List<About> collection;
    final List<About> about;
    final List<About> wpPostType;
    final List<Cury> curies;

    Links copyWith({
        List<Self>? self,
        List<About>? collection,
        List<About>? about,
        List<About>? wpPostType,
        List<Cury>? curies,
    }) {
        return Links(
            self: self ?? this.self,
            collection: collection ?? this.collection,
            about: about ?? this.about,
            wpPostType: wpPostType ?? this.wpPostType,
            curies: curies ?? this.curies,
        );
    }

    factory Links.fromJson(Map<String, dynamic> json){ 
        return Links(
            self: json["self"] == null ? [] : List<Self>.from(json["self"]!.map((x) => Self.fromJson(x))),
            collection: json["collection"] == null ? [] : List<About>.from(json["collection"]!.map((x) => About.fromJson(x))),
            about: json["about"] == null ? [] : List<About>.from(json["about"]!.map((x) => About.fromJson(x))),
            wpPostType: json["wp:post_type"] == null ? [] : List<About>.from(json["wp:post_type"]!.map((x) => About.fromJson(x))),
            curies: json["curies"] == null ? [] : List<Cury>.from(json["curies"]!.map((x) => Cury.fromJson(x))),
        );
    }

    @override
    List<Object?> get props => [
    self, collection, about, wpPostType, curies, ];
}

class About extends Equatable {
    About({
        required this.href,
    });

    final String href;

    About copyWith({
        String? href,
    }) {
        return About(
            href: href ?? this.href,
        );
    }

    factory About.fromJson(Map<String, dynamic> json){ 
        return About(
            href: json["href"] ?? "",
        );
    }

    @override
    List<Object?> get props => [
    href, ];
}

class Cury extends Equatable {
    Cury({
        required this.name,
        required this.href,
        required this.templated,
    });

    final String name;
    final String href;
    final bool templated;

    Cury copyWith({
        String? name,
        String? href,
        bool? templated,
    }) {
        return Cury(
            name: name ?? this.name,
            href: href ?? this.href,
            templated: templated ?? this.templated,
        );
    }

    factory Cury.fromJson(Map<String, dynamic> json){ 
        return Cury(
            name: json["name"] ?? "",
            href: json["href"] ?? "",
            templated: json["templated"] ?? false,
        );
    }

    @override
    List<Object?> get props => [
    name, href, templated, ];
}

class Self extends Equatable {
    Self({
        required this.href,
        required this.targetHints,
    });

    final String href;
    final TargetHints? targetHints;

    Self copyWith({
        String? href,
        TargetHints? targetHints,
    }) {
        return Self(
            href: href ?? this.href,
            targetHints: targetHints ?? this.targetHints,
        );
    }

    factory Self.fromJson(Map<String, dynamic> json){ 
        return Self(
            href: json["href"] ?? "",
            targetHints: json["targetHints"] == null ? null : TargetHints.fromJson(json["targetHints"]),
        );
    }

    @override
    List<Object?> get props => [
    href, targetHints, ];
}

class TargetHints extends Equatable {
    TargetHints({
        required this.allow,
    });

    final List<String> allow;

    TargetHints copyWith({
        List<String>? allow,
    }) {
        return TargetHints(
            allow: allow ?? this.allow,
        );
    }

    factory TargetHints.fromJson(Map<String, dynamic> json){ 
        return TargetHints(
            allow: json["allow"] == null ? [] : List<String>.from(json["allow"]!.map((x) => x)),
        );
    }

    @override
    List<Object?> get props => [
    allow, ];
}
