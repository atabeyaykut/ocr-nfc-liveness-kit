.class public final Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/controller/DashboardUIController$g;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/controller/DashboardUIController;->buildModels(Ljava/util/List;Ljava/lang/String;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/j;",
        "Lx9/l<",
        "Lwf/c;",
        "Ll9/m;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/controller/DashboardUIController;


# direct methods
.method public constructor <init>(Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/controller/DashboardUIController;)V
    .locals 1

    sget-object v0, Llf/c;->a:Llf/b;

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/controller/DashboardUIController$g;->a:Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/controller/DashboardUIController;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    check-cast p1, Lwf/c;

    .line 2
    .line 3
    const-string v0, "$this$carouselNoSnapBuilder"

    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v0, "atamLine"

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Lwf/c;->a(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/model/HeadLineItemModel_;

    .line 14
    .line 15
    invoke-direct {v0}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/model/HeadLineItemModel_;-><init>()V

    .line 16
    .line 17
    .line 18
    const/4 v1, 0x1

    .line 19
    new-array v1, v1, [Ljava/lang/Number;

    .line 20
    .line 21
    sget-object v2, Llf/c;->a:Llf/b;

    .line 22
    .line 23
    const/16 v3, 0xb

    .line 24
    .line 25
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    const/4 v4, 0x0

    .line 30
    aput-object v3, v1, v4

    .line 31
    .line 32
    invoke-interface {v0, v1}, Lxf/o;->id([Ljava/lang/Number;)Lxf/o;

    .line 33
    .line 34
    .line 35
    invoke-interface {v0, v2}, Lxf/o;->dashboardItem(Llf/b;)Lxf/o;

    .line 36
    .line 37
    .line 38
    new-instance v1, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/controller/a;

    .line 39
    .line 40
    iget-object v2, p0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/controller/DashboardUIController$g;->a:Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/controller/DashboardUIController;

    .line 41
    .line 42
    invoke-direct {v1, v2}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/controller/a;-><init>(Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/controller/DashboardUIController;)V

    .line 43
    .line 44
    .line 45
    invoke-interface {v0, v1}, Lxf/o;->listener(Lx9/l;)Lxf/o;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, v0}, Lwf/c;->add(Lcom/airbnb/epoxy/u;)V

    .line 49
    .line 50
    .line 51
    sget-object p1, Ll9/m;->a:Ll9/m;

    .line 52
    .line 53
    return-object p1
.end method
