.class public final synthetic Lrf/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Ltr/gov/turkiye/edevlet/kapisi/dashboard/favorite/FavoriteServicesFragment;

.field public final synthetic b:I

.field public final synthetic c:Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;


# direct methods
.method public synthetic constructor <init>(Ltr/gov/turkiye/edevlet/kapisi/dashboard/favorite/FavoriteServicesFragment;ILtr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrf/e;->a:Ltr/gov/turkiye/edevlet/kapisi/dashboard/favorite/FavoriteServicesFragment;

    iput p2, p0, Lrf/e;->b:I

    iput-object p3, p0, Lrf/e;->c:Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    .line 1
    sget-object p1, Ltr/gov/turkiye/edevlet/kapisi/dashboard/favorite/FavoriteServicesFragment;->l:[Lda/m;

    .line 2
    .line 3
    iget-object p1, p0, Lrf/e;->a:Ltr/gov/turkiye/edevlet/kapisi/dashboard/favorite/FavoriteServicesFragment;

    .line 4
    .line 5
    const-string v0, "this$0"

    .line 6
    .line 7
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lrf/e;->c:Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;

    .line 11
    .line 12
    const-string v1, "$service"

    .line 13
    .line 14
    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iget-object v1, p1, Ltr/gov/turkiye/edevlet/kapisi/dashboard/favorite/FavoriteServicesFragment;->h:Ljava/util/ArrayList;

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    const-string v3, "mServiceList"

    .line 21
    .line 22
    if-eqz v1, :cond_4

    .line 23
    .line 24
    iget v4, p0, Lrf/e;->b:I

    .line 25
    .line 26
    invoke-virtual {v1, v4, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p1, Ltr/gov/turkiye/edevlet/kapisi/dashboard/favorite/FavoriteServicesFragment;->h:Ljava/util/ArrayList;

    .line 30
    .line 31
    if-eqz v0, :cond_3

    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    const/4 v1, 0x1

    .line 38
    if-ne v0, v1, :cond_0

    .line 39
    .line 40
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/favorite/FavoriteServicesFragment;->J()V

    .line 41
    .line 42
    .line 43
    :cond_0
    iget-object v0, p1, Ltr/gov/turkiye/edevlet/kapisi/dashboard/favorite/FavoriteServicesFragment;->f:Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/controller/FavoriteServiceListUIController;

    .line 44
    .line 45
    if-eqz v0, :cond_2

    .line 46
    .line 47
    iget-object v1, p1, Ltr/gov/turkiye/edevlet/kapisi/dashboard/favorite/FavoriteServicesFragment;->h:Ljava/util/ArrayList;

    .line 48
    .line 49
    if-eqz v1, :cond_1

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Lcom/airbnb/epoxy/TypedEpoxyController;->setData(Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    iput-object v2, p1, Ltr/gov/turkiye/edevlet/kapisi/dashboard/favorite/FavoriteServicesFragment;->d:Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;

    .line 55
    .line 56
    return-void

    .line 57
    :cond_1
    invoke-static {v3}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    throw v2

    .line 61
    :cond_2
    const-string p1, "mServiceListController"

    .line 62
    .line 63
    invoke-static {p1}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    throw v2

    .line 67
    :cond_3
    invoke-static {v3}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    throw v2

    .line 71
    :cond_4
    invoke-static {v3}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    throw v2
.end method
