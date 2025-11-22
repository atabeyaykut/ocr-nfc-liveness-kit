.class public final Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/controller/a;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/j;",
        "Lx9/l<",
        "Llf/b;",
        "Ll9/m;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/controller/DashboardUIController;


# direct methods
.method public constructor <init>(Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/controller/DashboardUIController;)V
    .locals 0

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/controller/a;->a:Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/controller/DashboardUIController;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Llf/b;

    .line 2
    .line 3
    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/controller/a;->a:Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/controller/DashboardUIController;

    .line 4
    .line 5
    invoke-static {v0}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/controller/DashboardUIController;->access$getAdapterCallbacks$p(Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/controller/DashboardUIController;)Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/controller/DashboardUIController$a;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "it"

    .line 10
    .line 11
    invoke-static {p1, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-interface {v0, p1}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/controller/DashboardUIController$a;->p(Llf/b;)V

    .line 15
    .line 16
    .line 17
    sget-object p1, Ll9/m;->a:Ll9/m;

    .line 18
    .line 19
    return-object p1
.end method
