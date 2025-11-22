.class public final Ltr/gov/turkiye/edevlet/kapisi/search/SearchFragment$c;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltr/gov/turkiye/edevlet/kapisi/search/SearchFragment;->G(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

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
            "Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic b:Ltr/gov/turkiye/edevlet/kapisi/search/SearchFragment;


# direct methods
.method public constructor <init>(Ljava/util/List;Ltr/gov/turkiye/edevlet/kapisi/search/SearchFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;",
            ">;",
            "Ltr/gov/turkiye/edevlet/kapisi/search/SearchFragment;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/search/SearchFragment$c;->a:Ljava/util/List;

    iput-object p2, p0, Ltr/gov/turkiye/edevlet/kapisi/search/SearchFragment$c;->b:Ltr/gov/turkiye/edevlet/kapisi/search/SearchFragment;

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
    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/search/SearchFragment$c;->a:Ljava/util/List;

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
    check-cast v1, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;

    .line 27
    .line 28
    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/search/ui/SearchServiceListItemModel_;

    .line 29
    .line 30
    invoke-direct {v2}, Ltr/gov/turkiye/edevlet/kapisi/search/ui/SearchServiceListItemModel_;-><init>()V

    .line 31
    .line 32
    .line 33
    const/4 v3, 0x1

    .line 34
    new-array v3, v3, [Ljava/lang/Number;

    .line 35
    .line 36
    invoke-virtual {v1}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;->getServiceCode()Ljava/lang/Integer;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    const/4 v5, 0x0

    .line 41
    aput-object v4, v3, v5

    .line 42
    .line 43
    invoke-interface {v2, v3}, Log/c;->id([Ljava/lang/Number;)Log/c;

    .line 44
    .line 45
    .line 46
    invoke-interface {v2, v1}, Log/c;->service(Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;)Log/c;

    .line 47
    .line 48
    .line 49
    new-instance v1, Ltr/gov/turkiye/edevlet/kapisi/search/a;

    .line 50
    .line 51
    iget-object v3, p0, Ltr/gov/turkiye/edevlet/kapisi/search/SearchFragment$c;->b:Ltr/gov/turkiye/edevlet/kapisi/search/SearchFragment;

    .line 52
    .line 53
    invoke-direct {v1, v3}, Ltr/gov/turkiye/edevlet/kapisi/search/a;-><init>(Ltr/gov/turkiye/edevlet/kapisi/search/SearchFragment;)V

    .line 54
    .line 55
    .line 56
    invoke-interface {v2, v1}, Log/c;->listener(Lx9/l;)Log/c;

    .line 57
    .line 58
    .line 59
    invoke-interface {p1, v2}, Lcom/airbnb/epoxy/f0;->add(Lcom/airbnb/epoxy/u;)V

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_0
    sget-object p1, Ll9/m;->a:Ll9/m;

    .line 64
    .line 65
    return-object p1
.end method
