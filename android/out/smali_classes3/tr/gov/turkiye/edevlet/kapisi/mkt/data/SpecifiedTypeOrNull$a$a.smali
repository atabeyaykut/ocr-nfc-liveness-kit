.class public final Ltr/gov/turkiye/edevlet/kapisi/mkt/data/SpecifiedTypeOrNull$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll8/p$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltr/gov/turkiye/edevlet/kapisi/mkt/data/SpecifiedTypeOrNull$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/reflect/Type;Ljava/util/Set;Ll8/b0;)Ll8/p;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/util/Set<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Ll8/b0;",
            ")",
            "Ll8/p<",
            "*>;"
        }
    .end annotation

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "annotations"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "moshi"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object v2, v1

    move-object v3, v2

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/annotation/Annotation;

    instance-of v5, v4, Ltr/gov/turkiye/edevlet/kapisi/mkt/data/SpecifiedTypeOrNull;

    if-eqz v5, :cond_1

    move-object v2, v4

    check-cast v2, Ltr/gov/turkiye/edevlet/kapisi/mkt/data/SpecifiedTypeOrNull;

    invoke-interface {v2}, Ltr/gov/turkiye/edevlet/kapisi/mkt/data/SpecifiedTypeOrNull;->token()Ll8/u$b;

    move-result-object v2

    invoke-static {p2}, Lm9/t;->x1(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3, v4}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    if-nez v2, :cond_3

    return-object v1

    :cond_3
    invoke-static {v3}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    invoke-virtual {p3, p0, p1, v3}, Ll8/b0;->c(Ll8/p$a;Ljava/lang/reflect/Type;Ljava/util/Set;)Ll8/p;

    move-result-object p1

    new-instance p2, Ltr/gov/turkiye/edevlet/kapisi/mkt/data/SpecifiedTypeOrNull$a;

    invoke-direct {p2, p1, v2}, Ltr/gov/turkiye/edevlet/kapisi/mkt/data/SpecifiedTypeOrNull$a;-><init>(Ll8/p;Ll8/u$b;)V

    return-object p2
.end method
