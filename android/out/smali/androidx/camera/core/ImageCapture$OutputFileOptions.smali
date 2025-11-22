.class public final Landroidx/camera/core/ImageCapture$OutputFileOptions;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/core/ImageCapture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OutputFileOptions"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/core/ImageCapture$OutputFileOptions$Builder;
    }
.end annotation


# instance fields
.field private final mContentResolver:Landroid/content/ContentResolver;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final mContentValues:Landroid/content/ContentValues;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final mFile:Ljava/io/File;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final mMetadata:Landroidx/camera/core/ImageCapture$Metadata;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final mOutputStream:Ljava/io/OutputStream;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final mSaveCollection:Landroid/net/Uri;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/io/File;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/io/OutputStream;Landroidx/camera/core/ImageCapture$Metadata;)V
    .locals 0
    .param p1    # Ljava/io/File;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/content/ContentResolver;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Landroid/content/ContentValues;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/io/OutputStream;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Landroidx/camera/core/ImageCapture$Metadata;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/core/ImageCapture$OutputFileOptions;->mFile:Ljava/io/File;

    iput-object p2, p0, Landroidx/camera/core/ImageCapture$OutputFileOptions;->mContentResolver:Landroid/content/ContentResolver;

    iput-object p3, p0, Landroidx/camera/core/ImageCapture$OutputFileOptions;->mSaveCollection:Landroid/net/Uri;

    iput-object p4, p0, Landroidx/camera/core/ImageCapture$OutputFileOptions;->mContentValues:Landroid/content/ContentValues;

    iput-object p5, p0, Landroidx/camera/core/ImageCapture$OutputFileOptions;->mOutputStream:Ljava/io/OutputStream;

    if-nez p6, :cond_0

    new-instance p6, Landroidx/camera/core/ImageCapture$Metadata;

    invoke-direct {p6}, Landroidx/camera/core/ImageCapture$Metadata;-><init>()V

    :cond_0
    iput-object p6, p0, Landroidx/camera/core/ImageCapture$OutputFileOptions;->mMetadata:Landroidx/camera/core/ImageCapture$Metadata;

    return-void
.end method


# virtual methods
.method public getContentResolver()Landroid/content/ContentResolver;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Landroidx/camera/core/ImageCapture$OutputFileOptions;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method public getContentValues()Landroid/content/ContentValues;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Landroidx/camera/core/ImageCapture$OutputFileOptions;->mContentValues:Landroid/content/ContentValues;

    return-object v0
.end method

.method public getFile()Ljava/io/File;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Landroidx/camera/core/ImageCapture$OutputFileOptions;->mFile:Ljava/io/File;

    return-object v0
.end method

.method public getMetadata()Landroidx/camera/core/ImageCapture$Metadata;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    iget-object v0, p0, Landroidx/camera/core/ImageCapture$OutputFileOptions;->mMetadata:Landroidx/camera/core/ImageCapture$Metadata;

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Landroidx/camera/core/ImageCapture$OutputFileOptions;->mOutputStream:Ljava/io/OutputStream;

    return-object v0
.end method

.method public getSaveCollection()Landroid/net/Uri;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Landroidx/camera/core/ImageCapture$OutputFileOptions;->mSaveCollection:Landroid/net/Uri;

    return-object v0
.end method
