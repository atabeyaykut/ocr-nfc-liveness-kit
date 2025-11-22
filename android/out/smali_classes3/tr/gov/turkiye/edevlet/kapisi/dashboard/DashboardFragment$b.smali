.class public final Ltr/gov/turkiye/edevlet/kapisi/dashboard/DashboardFragment$b;
.super Landroidx/activity/OnBackPressedCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltr/gov/turkiye/edevlet/kapisi/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ltr/gov/turkiye/edevlet/kapisi/dashboard/DashboardFragment;


# direct methods
.method public constructor <init>(Ltr/gov/turkiye/edevlet/kapisi/dashboard/DashboardFragment;)V
    .locals 0

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/DashboardFragment$b;->a:Ltr/gov/turkiye/edevlet/kapisi/dashboard/DashboardFragment;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Landroidx/activity/OnBackPressedCallback;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public final handleOnBackPressed()V
    .locals 6

    .line 1
    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/DashboardFragment$b;->a:Ltr/gov/turkiye/edevlet/kapisi/dashboard/DashboardFragment;

    .line 2
    .line 3
    iget-object v1, v0, Ltr/gov/turkiye/edevlet/kapisi/dashboard/DashboardFragment;->h:Landroid/content/Context;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    new-instance v2, Lv/e;

    .line 8
    .line 9
    invoke-direct {v2, v1}, Lv/e;-><init>(Landroid/content/Context;)V

    .line 10
    .line 11
    .line 12
    const v1, 0x7f13006b

    .line 13
    .line 14
    .line 15
    const/4 v3, 0x6

    .line 16
    const/4 v4, 0x0

    .line 17
    const v5, 0x7f13006c

    .line 18
    .line 19
    .line 20
    invoke-static {v1, v2, v4, v3, v5}, Landroidx/camera/camera2/internal/c;->e(ILv/e;Ljava/lang/CharSequence;II)Ljava/lang/Integer;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    new-instance v3, Ltr/gov/turkiye/edevlet/kapisi/dashboard/DashboardFragment$b$a;

    .line 25
    .line 26
    invoke-direct {v3, v0}, Ltr/gov/turkiye/edevlet/kapisi/dashboard/DashboardFragment$b$a;-><init>(Ltr/gov/turkiye/edevlet/kapisi/dashboard/DashboardFragment;)V

    .line 27
    .line 28
    .line 29
    const/4 v0, 0x2

    .line 30
    invoke-static {v2, v1, v4, v3, v0}, Lv/e;->e(Lv/e;Ljava/lang/Integer;Ljava/lang/String;Lx9/l;I)V

    .line 31
    .line 32
    .line 33
    const v0, 0x7f13006a

    .line 34
    .line 35
    .line 36
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    sget-object v1, Ltr/gov/turkiye/edevlet/kapisi/dashboard/DashboardFragment$b$b;->a:Ltr/gov/turkiye/edevlet/kapisi/dashboard/DashboardFragment$b$b;

    .line 41
    .line 42
    invoke-static {v2, v0, v1}, Lv/e;->d(Lv/e;Ljava/lang/Integer;Lx9/l;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2}, Lv/e;->show()V

    .line 46
    .line 47
    .line 48
    :cond_0
    return-void
.end method
