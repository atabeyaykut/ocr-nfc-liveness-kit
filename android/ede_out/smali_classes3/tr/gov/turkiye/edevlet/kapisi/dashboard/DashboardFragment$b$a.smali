.class public final Ltr/gov/turkiye/edevlet/kapisi/dashboard/DashboardFragment$b$a;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltr/gov/turkiye/edevlet/kapisi/dashboard/DashboardFragment$b;->handleOnBackPressed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/j;",
        "Lx9/l<",
        "Lv/e;",
        "Ll9/m;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ltr/gov/turkiye/edevlet/kapisi/dashboard/DashboardFragment;


# direct methods
.method public constructor <init>(Ltr/gov/turkiye/edevlet/kapisi/dashboard/DashboardFragment;)V
    .locals 0

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/DashboardFragment$b$a;->a:Ltr/gov/turkiye/edevlet/kapisi/dashboard/DashboardFragment;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    check-cast p1, Lv/e;

    .line 2
    .line 3
    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/DashboardFragment$b$a;->a:Ltr/gov/turkiye/edevlet/kapisi/dashboard/DashboardFragment;

    .line 4
    .line 5
    const-string v1, "dialog"

    .line 6
    .line 7
    invoke-static {p1, v1}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    :try_start_0
    iget-object v1, v0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/DashboardFragment;->h:Landroid/content/Context;

    .line 11
    .line 12
    new-instance v2, Landroidx/work/OneTimeWorkRequest$Builder;

    .line 13
    .line 14
    const-class v3, Ltr/gov/turkiye/edevlet/kapisi/common/worker/logout/LogoutWorker;

    .line 15
    .line 16
    invoke-direct {v2, v3}, Landroidx/work/OneTimeWorkRequest$Builder;-><init>(Ljava/lang/Class;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v2}, Landroidx/work/WorkRequest$Builder;->build()Landroidx/work/WorkRequest;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    const-string v3, "OneTimeWorkRequestBuilder<LogoutWorker>().build()"

    .line 24
    .line 25
    invoke-static {v2, v3}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    check-cast v2, Landroidx/work/OneTimeWorkRequest;

    .line 29
    .line 30
    if-eqz v1, :cond_0

    .line 31
    .line 32
    invoke-static {v1}, Landroidx/work/WorkManager;->getInstance(Landroid/content/Context;)Landroidx/work/WorkManager;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v1, v2}, Landroidx/work/WorkManager;->enqueue(Landroidx/work/WorkRequest;)Landroidx/work/Operation;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :catch_0
    nop

    .line 41
    :cond_0
    :goto_0
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    const-string v2, "action.login.open"

    .line 46
    .line 47
    const v3, 0x8000

    .line 48
    .line 49
    .line 50
    invoke-static {v2, v3}, Landroid/support/v4/media/a;->b(Ljava/lang/String;I)Landroid/content/Intent;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 55
    .line 56
    const/16 v4, 0x22

    .line 57
    .line 58
    if-lt v3, v4, :cond_1

    .line 59
    .line 60
    const-string v3, "tr.gov.turkiye.edevlet.kapisi"

    .line 61
    .line 62
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 63
    .line 64
    .line 65
    :cond_1
    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1}, Lv/e;->dismiss()V

    .line 76
    .line 77
    .line 78
    sget-object p1, Ll9/m;->a:Ll9/m;

    .line 79
    .line 80
    return-object p1
.end method
