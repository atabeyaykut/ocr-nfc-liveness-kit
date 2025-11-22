.class public final Ltr/gov/turkiye/edevlet/kapisi/verification/identity/CardInfoFragment$b;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltr/gov/turkiye/edevlet/kapisi/verification/identity/CardInfoFragment;->F(I)V
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
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Ltr/gov/turkiye/edevlet/kapisi/verification/identity/CardInfoFragment;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ltr/gov/turkiye/edevlet/kapisi/verification/identity/CardInfoFragment;)V
    .locals 0

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/verification/identity/CardInfoFragment$b;->a:Landroid/content/Context;

    iput-object p2, p0, Ltr/gov/turkiye/edevlet/kapisi/verification/identity/CardInfoFragment$b;->b:Ltr/gov/turkiye/edevlet/kapisi/verification/identity/CardInfoFragment;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

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
    new-instance v0, Landroid/content/Intent;

    .line 9
    .line 10
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/verification/identity/CardInfoFragment$b;->a:Landroid/content/Context;

    .line 19
    .line 20
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    const/4 v2, 0x0

    .line 25
    const-string v3, "package"

    .line 26
    .line 27
    invoke-static {v3, v1, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 32
    .line 33
    .line 34
    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/verification/identity/CardInfoFragment$b;->b:Ltr/gov/turkiye/edevlet/kapisi/verification/identity/CardInfoFragment;

    .line 35
    .line 36
    invoke-virtual {v1, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Lv/e;->dismiss()V

    .line 40
    .line 41
    .line 42
    sget-object p1, Ll9/m;->a:Ll9/m;

    .line 43
    .line 44
    return-object p1
.end method
