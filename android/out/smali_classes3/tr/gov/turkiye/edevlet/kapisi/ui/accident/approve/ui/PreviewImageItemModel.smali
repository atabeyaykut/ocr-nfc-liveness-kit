.class public abstract Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/ui/PreviewImageItemModel;
.super Lhe/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lhe/a<",
        "Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/ItemPreviewPhotoBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0010\u0012\n\u0002\u0008\t\u0008\'\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ\u0008\u0010\u0004\u001a\u00020\u0003H\u0014J\u000c\u0010\u0006\u001a\u00020\u0005*\u00020\u0002H\u0016R\"\u0010\u0008\u001a\u00020\u00078\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\rR\"\u0010\u000f\u001a\u00020\u000e8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000f\u0010\u0010\u001a\u0004\u0008\u000f\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013R0\u0010\u0016\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0015\u0012\u0004\u0012\u00020\u00050\u00148\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008\u0016\u0010\u0017\u001a\u0004\u0008\u0018\u0010\u0019\"\u0004\u0008\u001a\u0010\u001b\u00a8\u0006\u001e"
    }
    d2 = {
        "Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/ui/PreviewImageItemModel;",
        "Lhe/a;",
        "Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/ItemPreviewPhotoBinding;",
        "",
        "getDefaultLayout",
        "Ll9/m;",
        "bind",
        "Lzg/a;",
        "photoItem",
        "Lzg/a;",
        "getPhotoItem",
        "()Lzg/a;",
        "setPhotoItem",
        "(Lzg/a;)V",
        "",
        "isDefaultVisible",
        "Z",
        "()Z",
        "setDefaultVisible",
        "(Z)V",
        "Lkotlin/Function1;",
        "",
        "addPhoto",
        "Lx9/l;",
        "getAddPhoto",
        "()Lx9/l;",
        "setAddPhoto",
        "(Lx9/l;)V",
        "<init>",
        "()V",
        "ui-mobile-accident_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field public addPhoto:Lx9/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx9/l<",
            "-[B",
            "Ll9/m;",
            ">;"
        }
    .end annotation
.end field

.field private isDefaultVisible:Z

.field public photoItem:Lzg/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lhe/a;-><init>()V

    return-void
.end method

.method public static synthetic a(Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/ui/PreviewImageItemModel;[BLandroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/ui/PreviewImageItemModel;->bind$lambda$1(Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/ui/PreviewImageItemModel;[BLandroid/view/View;)V

    return-void
.end method

.method public static synthetic b(Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/ui/PreviewImageItemModel;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/ui/PreviewImageItemModel;->bind$lambda$0(Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/ui/PreviewImageItemModel;Landroid/view/View;)V

    return-void
.end method

.method private static final bind$lambda$0(Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/ui/PreviewImageItemModel;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/ui/PreviewImageItemModel;->getAddPhoto()Lx9/l;

    move-result-object p0

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lx9/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final bind$lambda$1(Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/ui/PreviewImageItemModel;[BLandroid/view/View;)V
    .locals 0

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/ui/PreviewImageItemModel;->getAddPhoto()Lx9/l;

    move-result-object p0

    invoke-interface {p0, p1}, Lx9/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public bridge synthetic bind(Landroidx/viewbinding/ViewBinding;)V
    .locals 0

    check-cast p1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/ItemPreviewPhotoBinding;

    invoke-virtual {p0, p1}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/ui/PreviewImageItemModel;->bind(Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/ItemPreviewPhotoBinding;)V

    return-void
.end method

.method public bind(Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/ItemPreviewPhotoBinding;)V
    .locals 3

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/ui/PreviewImageItemModel;->getPhotoItem()Lzg/a;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget-object v0, v0, Lzg/a;->b:Ljava/lang/String;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v0, 0x0

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 24
    :goto_1
    const-string v1, "photoAdded"

    .line 25
    .line 26
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/ItemPreviewPhotoBinding;->b:Landroidx/appcompat/widget/AppCompatImageView;

    .line 27
    .line 28
    if-eqz v0, :cond_2

    .line 29
    .line 30
    invoke-static {p1, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    const v0, 0x7f0800fc

    .line 34
    .line 35
    .line 36
    invoke-static {p1, v0}, Lge/b;->a(Landroid/widget/ImageView;I)V

    .line 37
    .line 38
    .line 39
    new-instance v0, Lzd/a;

    .line 40
    .line 41
    const/16 v1, 0xc

    .line 42
    .line 43
    invoke-direct {v0, v1, p0}, Lzd/a;-><init>(ILjava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    .line 48
    .line 49
    goto :goto_2

    .line 50
    :cond_2
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/ui/PreviewImageItemModel;->getPhotoItem()Lzg/a;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    iget-object v0, v0, Lzg/a;->b:Ljava/lang/String;

    .line 55
    .line 56
    const/4 v2, 0x2

    .line 57
    invoke-static {v0, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-static {p1, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    const-string v1, "contentArray"

    .line 65
    .line 66
    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-static {p1, v0}, Lge/b;->b(Landroid/widget/ImageView;[B)V

    .line 70
    .line 71
    .line 72
    new-instance v1, Lke/c;

    .line 73
    .line 74
    const/4 v2, 0x3

    .line 75
    invoke-direct {v1, v2, p0, v0}, Lke/c;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    .line 80
    .line 81
    :goto_2
    return-void
.end method

.method public final getAddPhoto()Lx9/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lx9/l<",
            "[B",
            "Ll9/m;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/ui/PreviewImageItemModel;->addPhoto:Lx9/l;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "addPhoto"

    invoke-static {v0}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public getDefaultLayout()I
    .locals 1

    const v0, 0x7f0d00a6

    return v0
.end method

.method public final getPhotoItem()Lzg/a;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/ui/PreviewImageItemModel;->photoItem:Lzg/a;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "photoItem"

    invoke-static {v0}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final isDefaultVisible()Z
    .locals 1

    iget-boolean v0, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/ui/PreviewImageItemModel;->isDefaultVisible:Z

    return v0
.end method

.method public final setAddPhoto(Lx9/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx9/l<",
            "-[B",
            "Ll9/m;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/ui/PreviewImageItemModel;->addPhoto:Lx9/l;

    return-void
.end method

.method public final setDefaultVisible(Z)V
    .locals 0

    iput-boolean p1, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/ui/PreviewImageItemModel;->isDefaultVisible:Z

    return-void
.end method

.method public final setPhotoItem(Lzg/a;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/ui/PreviewImageItemModel;->photoItem:Lzg/a;

    return-void
.end method
