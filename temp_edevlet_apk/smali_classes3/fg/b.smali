.class public final Lfg/b;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/l;


# annotations
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
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Ltr/gov/turkiye/edevlet/kapisi/profile/ProfileFragment;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ltr/gov/turkiye/edevlet/kapisi/profile/ProfileFragment;)V
    .locals 0

    iput-object p1, p0, Lfg/b;->a:Landroid/content/Context;

    iput-object p2, p0, Lfg/b;->b:Ltr/gov/turkiye/edevlet/kapisi/profile/ProfileFragment;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p1, Lv/e;

    .line 2
    .line 3
    const-string v0, "dialog"

    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :try_start_0
    new-instance v0, Landroidx/work/OneTimeWorkRequest$Builder;

    .line 9
    .line 10
    const-class v1, Ltr/gov/turkiye/edevlet/kapisi/common/worker/logout/LogoutWorker;

    .line 11
    .line 12
    invoke-direct {v0, v1}, Landroidx/work/OneTimeWorkRequest$Builder;-><init>(Ljava/lang/Class;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Landroidx/work/WorkRequest$Builder;->build()Landroidx/work/WorkRequest;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v1, "OneTimeWorkRequestBuilder<LogoutWorker>().build()"

    .line 20
    .line 21
    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    check-cast v0, Landroidx/work/OneTimeWorkRequest;

    .line 25
    .line 26
    iget-object v1, p0, Lfg/b;->a:Landroid/content/Context;

    .line 27
    .line 28
    invoke-static {v1}, Landroidx/work/WorkManager;->getInstance(Landroid/content/Context;)Landroidx/work/WorkManager;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v1, v0}, Landroidx/work/WorkManager;->enqueue(Landroidx/work/WorkRequest;)Landroidx/work/Operation;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :catch_0
    nop

    .line 37
    :goto_0
    const-string v0, "action.login.open"

    .line 38
    .line 39
    const v1, 0x8000

    .line 40
    .line 41
    .line 42
    invoke-static {v0, v1}, Landroid/support/v4/media/a;->b(Ljava/lang/String;I)Landroid/content/Intent;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 47
    .line 48
    const/16 v2, 0x22

    .line 49
    .line 50
    if-lt v1, v2, :cond_0

    .line 51
    .line 52
    const-string v1, "tr.gov.turkiye.edevlet.kapisi"

    .line 53
    .line 54
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 55
    .line 56
    .line 57
    :cond_0
    iget-object v1, p0, Lfg/b;->b:Ltr/gov/turkiye/edevlet/kapisi/profile/ProfileFragment;

    .line 58
    .line 59
    invoke-virtual {v1, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    if-eqz v0, :cond_1

    .line 67
    .line 68
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 69
    .line 70
    .line 71
    :cond_1
    invoke-virtual {p1}, Lv/e;->dismiss()V

    .line 72
    .line 73
    .line 74
    sget-object p1, Ll9/m;->a:Ll9/m;

    .line 75
    .line 76
    return-object p1
.end method
