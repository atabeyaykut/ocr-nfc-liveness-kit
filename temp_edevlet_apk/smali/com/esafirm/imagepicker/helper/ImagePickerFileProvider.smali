.class public final Lcom/esafirm/imagepicker/helper/ImagePickerFileProvider;
.super Landroidx/core/content/FileProvider;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "Lcom/esafirm/imagepicker/helper/ImagePickerFileProvider;",
        "Landroidx/core/content/FileProvider;",
        "<init>",
        "()V",
        "imagepicker_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/core/content/FileProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCreate()Z
    .locals 2

    .line 1
    new-instance v0, Lt1/b;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-static {v1}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v1}, Lt1/b;-><init>(Landroid/content/Context;)V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lc5/e0;->q:Lt1/c;

    .line 14
    .line 15
    invoke-super {p0}, Landroidx/core/content/FileProvider;->onCreate()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    return v0
.end method
