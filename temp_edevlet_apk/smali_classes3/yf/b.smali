.class public final Lyf/b;
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
            "Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic b:Lio/realm/g0;

.field public final synthetic c:Ltr/gov/turkiye/edevlet/kapisi/dashboard/wonder/WonderServicesFragment;


# direct methods
.method public constructor <init>(Ljava/util/List;Lio/realm/g0;Ltr/gov/turkiye/edevlet/kapisi/dashboard/wonder/WonderServicesFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;",
            ">;",
            "Lio/realm/g0;",
            "Ltr/gov/turkiye/edevlet/kapisi/dashboard/wonder/WonderServicesFragment;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lyf/b;->a:Ljava/util/List;

    iput-object p2, p0, Lyf/b;->b:Lio/realm/g0;

    iput-object p3, p0, Lyf/b;->c:Ltr/gov/turkiye/edevlet/kapisi/dashboard/wonder/WonderServicesFragment;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

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
    iget-object v0, p0, Lyf/b;->a:Ljava/util/List;

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
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_1

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
    const-string v2, "realm"

    .line 29
    .line 30
    iget-object v3, p0, Lyf/b;->b:Lio/realm/g0;

    .line 31
    .line 32
    invoke-static {v3, v2}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    const-class v2, Ltr/gov/turkiye/edevlet/kapisi/data/service/WonderServiceModelRealm;

    .line 36
    .line 37
    invoke-virtual {v3, v2}, Lio/realm/g0;->J(Ljava/lang/Class;)Lio/realm/RealmQuery;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-virtual {v1}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;->getServiceCode()Ljava/lang/Integer;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    const-string v4, "serviceCode"

    .line 46
    .line 47
    invoke-virtual {v2, v3, v4}, Lio/realm/RealmQuery;->b(Ljava/lang/Integer;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2}, Lio/realm/RealmQuery;->e()Lio/realm/s0;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    check-cast v2, Ltr/gov/turkiye/edevlet/kapisi/data/service/WonderServiceModelRealm;

    .line 55
    .line 56
    if-eqz v2, :cond_0

    .line 57
    .line 58
    new-instance v3, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/model/WonderListItemModel_;

    .line 59
    .line 60
    invoke-direct {v3}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/model/WonderListItemModel_;-><init>()V

    .line 61
    .line 62
    .line 63
    const/4 v4, 0x1

    .line 64
    new-array v4, v4, [Ljava/lang/Number;

    .line 65
    .line 66
    const/4 v5, 0x0

    .line 67
    invoke-virtual {v1}, Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;->getServiceCode()Ljava/lang/Integer;

    .line 68
    .line 69
    .line 70
    move-result-object v6

    .line 71
    aput-object v6, v4, v5

    .line 72
    .line 73
    invoke-interface {v3, v4}, Lxf/b0;->id([Ljava/lang/Number;)Lxf/b0;

    .line 74
    .line 75
    .line 76
    invoke-interface {v3, v1}, Lxf/b0;->service(Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;)Lxf/b0;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/service/WonderServiceModelRealm;->getQuestion()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    invoke-interface {v3, v1}, Lxf/b0;->question(Ljava/lang/String;)Lxf/b0;

    .line 84
    .line 85
    .line 86
    new-instance v1, Lyf/a;

    .line 87
    .line 88
    iget-object v2, p0, Lyf/b;->c:Ltr/gov/turkiye/edevlet/kapisi/dashboard/wonder/WonderServicesFragment;

    .line 89
    .line 90
    invoke-direct {v1, v2}, Lyf/a;-><init>(Ltr/gov/turkiye/edevlet/kapisi/dashboard/wonder/WonderServicesFragment;)V

    .line 91
    .line 92
    .line 93
    invoke-interface {v3, v1}, Lxf/b0;->listener(Lx9/l;)Lxf/b0;

    .line 94
    .line 95
    .line 96
    invoke-interface {p1, v3}, Lcom/airbnb/epoxy/f0;->add(Lcom/airbnb/epoxy/u;)V

    .line 97
    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_1
    sget-object p1, Ll9/m;->a:Ll9/m;

    .line 101
    .line 102
    return-object p1
.end method
