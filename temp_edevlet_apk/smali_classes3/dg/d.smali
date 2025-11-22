.class public final Ldg/d;
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
.field public final synthetic a:Ltr/gov/turkiye/edevlet/kapisi/main/MainActivity;


# direct methods
.method public constructor <init>(Ltr/gov/turkiye/edevlet/kapisi/main/MainActivity;)V
    .locals 0

    iput-object p1, p0, Ldg/d;->a:Ltr/gov/turkiye/edevlet/kapisi/main/MainActivity;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

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
    iget-object v0, p0, Ldg/d;->a:Ltr/gov/turkiye/edevlet/kapisi/main/MainActivity;

    .line 9
    .line 10
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/main/MainActivity;->e:Landroidx/activity/result/ActivityResultLauncher;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    const-string v1, "android.permission.POST_NOTIFICATIONS"

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Lv/e;->dismiss()V

    .line 20
    .line 21
    .line 22
    sget-object p1, Ll9/m;->a:Ll9/m;

    .line 23
    .line 24
    return-object p1

    .line 25
    :cond_0
    const-string p1, "requestPermissionLauncher"

    .line 26
    .line 27
    invoke-static {p1}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    const/4 p1, 0x0

    .line 31
    throw p1
.end method
