.class public final Lmf/b;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/j;",
        "Lx9/l<",
        "Lcom/airbnb/epoxy/p;",
        "Ll9/m;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ltr/gov/turkiye/edevlet/kapisi/data/about/AboutPageModelRealm;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic b:Ltr/gov/turkiye/edevlet/kapisi/dashboard/about/AboutPageFragment;


# direct methods
.method public constructor <init>(Ljava/util/List;Ltr/gov/turkiye/edevlet/kapisi/dashboard/about/AboutPageFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ltr/gov/turkiye/edevlet/kapisi/data/about/AboutPageModelRealm;",
            ">;",
            "Ltr/gov/turkiye/edevlet/kapisi/dashboard/about/AboutPageFragment;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lmf/b;->a:Ljava/util/List;

    iput-object p2, p0, Lmf/b;->b:Ltr/gov/turkiye/edevlet/kapisi/dashboard/about/AboutPageFragment;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    check-cast p1, Lcom/airbnb/epoxy/p;

    .line 2
    .line 3
    const-string v0, "$this$withModels"

    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lmf/b;->a:Ljava/util/List;

    .line 9
    .line 10
    check-cast v0, Ljava/lang/Iterable;

    .line 11
    .line 12
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Ltr/gov/turkiye/edevlet/kapisi/data/about/AboutPageModelRealm;

    .line 27
    .line 28
    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/model/AboutPageItemModel_;

    .line 29
    .line 30
    invoke-direct {v2}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/model/AboutPageItemModel_;-><init>()V

    .line 31
    .line 32
    .line 33
    const/4 v3, 0x1

    .line 34
    new-array v3, v3, [Ljava/lang/Number;

    .line 35
    .line 36
    invoke-virtual {v1}, Ltr/gov/turkiye/edevlet/kapisi/data/about/AboutPageModelRealm;->getId()I

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    const/4 v5, 0x0

    .line 45
    aput-object v4, v3, v5

    .line 46
    .line 47
    invoke-interface {v2, v3}, Lxf/a;->id([Ljava/lang/Number;)Lxf/a;

    .line 48
    .line 49
    .line 50
    invoke-interface {v2, v1}, Lxf/a;->aboutPageItem(Ltr/gov/turkiye/edevlet/kapisi/data/about/AboutPageModelRealm;)Lxf/a;

    .line 51
    .line 52
    .line 53
    new-instance v1, Lmf/a;

    .line 54
    .line 55
    iget-object v3, p0, Lmf/b;->b:Ltr/gov/turkiye/edevlet/kapisi/dashboard/about/AboutPageFragment;

    .line 56
    .line 57
    invoke-direct {v1, v3}, Lmf/a;-><init>(Ltr/gov/turkiye/edevlet/kapisi/dashboard/about/AboutPageFragment;)V

    .line 58
    .line 59
    .line 60
    invoke-interface {v2, v1}, Lxf/a;->listener(Lx9/l;)Lxf/a;

    .line 61
    .line 62
    .line 63
    invoke-interface {p1, v2}, Lcom/airbnb/epoxy/f0;->add(Lcom/airbnb/epoxy/u;)V

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_0
    sget-object p1, Ll9/m;->a:Ll9/m;

    .line 68
    .line 69
    return-object p1
.end method
