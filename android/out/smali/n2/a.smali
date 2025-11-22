.class public final Ln2/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroidx/fragment/app/Fragment;

.field public b:Lo2/a;

.field public c:[Ljava/lang/String;

.field public final d:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/Fragment;)V
    .locals 2

    .line 1
    const-string v0, "fragment"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const-string v1, "fragment.requireActivity()"

    .line 11
    .line 12
    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Ln2/a;->d:Landroid/app/Activity;

    .line 19
    .line 20
    sget-object v0, Lo2/a;->b:Lo2/a;

    .line 21
    .line 22
    iput-object v0, p0, Ln2/a;->b:Lo2/a;

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    new-array v0, v0, [Ljava/lang/String;

    .line 26
    .line 27
    iput-object v0, p0, Ln2/a;->c:[Ljava/lang/String;

    .line 28
    .line 29
    iput-object p1, p0, Ln2/a;->a:Landroidx/fragment/app/Fragment;

    .line 30
    .line 31
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 6

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-class v1, Lcom/github/dhaval2404/imagepicker/ImagePickerActivity;

    .line 4
    .line 5
    iget-object v2, p0, Ln2/a;->d:Landroid/app/Activity;

    .line 6
    .line 7
    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 8
    .line 9
    .line 10
    new-instance v1, Landroid/os/Bundle;

    .line 11
    .line 12
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 13
    .line 14
    .line 15
    const-string v3, "extra.image_provider"

    .line 16
    .line 17
    iget-object v4, p0, Ln2/a;->b:Lo2/a;

    .line 18
    .line 19
    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 20
    .line 21
    .line 22
    const-string v3, "extra.mime_types"

    .line 23
    .line 24
    iget-object v4, p0, Ln2/a;->c:[Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {v1, v3, v4}, Landroid/os/BaseBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    const-string v3, "extra.crop"

    .line 30
    .line 31
    const/4 v4, 0x0

    .line 32
    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 33
    .line 34
    .line 35
    const-string v3, "extra.crop_x"

    .line 36
    .line 37
    const/4 v5, 0x0

    .line 38
    invoke-virtual {v1, v3, v5}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 39
    .line 40
    .line 41
    const-string v3, "extra.crop_y"

    .line 42
    .line 43
    invoke-virtual {v1, v3, v5}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 44
    .line 45
    .line 46
    const-string v3, "extra.max_width"

    .line 47
    .line 48
    invoke-virtual {v1, v3, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 49
    .line 50
    .line 51
    const-string v3, "extra.max_height"

    .line 52
    .line 53
    invoke-virtual {v1, v3, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 54
    .line 55
    .line 56
    const-string v3, "extra.image_max_size"

    .line 57
    .line 58
    const-wide/16 v4, 0x0

    .line 59
    .line 60
    invoke-virtual {v1, v3, v4, v5}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 61
    .line 62
    .line 63
    const-string v3, "extra.save_directory"

    .line 64
    .line 65
    const/4 v4, 0x0

    .line 66
    invoke-virtual {v1, v3, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 70
    .line 71
    .line 72
    iget-object v1, p0, Ln2/a;->a:Landroidx/fragment/app/Fragment;

    .line 73
    .line 74
    if-eqz v1, :cond_0

    .line 75
    .line 76
    if-eqz v1, :cond_1

    .line 77
    .line 78
    invoke-virtual {v1, v0, p1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 79
    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_0
    invoke-virtual {v2, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 83
    .line 84
    .line 85
    :cond_1
    :goto_0
    return-void
.end method
