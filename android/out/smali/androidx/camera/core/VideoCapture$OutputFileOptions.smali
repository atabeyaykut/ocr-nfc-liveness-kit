.class public final Landroidx/camera/core/VideoCapture$OutputFileOptions;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/core/VideoCapture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OutputFileOptions"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/core/VideoCapture$OutputFileOptions$Builder;
    }
.end annotation


# static fields
.field private static final EMPTY_METADATA:Landroidx/camera/core/VideoCapture$Metadata;


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

.field private final mFileDescriptor:Ljava/io/FileDescriptor;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final mMetadata:Landroidx/camera/core/VideoCapture$Metadata;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final mSaveCollection:Landroid/net/Uri;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/camera/core/VideoCapture$Metadata;

    invoke-direct {v0}, Landroidx/camera/core/VideoCapture$Metadata;-><init>()V

    sput-object v0, Landroidx/camera/core/VideoCapture$OutputFileOptions;->EMPTY_METADATA:Landroidx/camera/core/VideoCapture$Metadata;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/io/FileDescriptor;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Landroidx/camera/core/VideoCapture$Metadata;)V
    .locals 0
    .param p1    # Ljava/io/File;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/io/FileDescriptor;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/content/ContentResolver;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Landroid/content/ContentValues;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Landroidx/camera/core/VideoCapture$Metadata;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/core/VideoCapture$OutputFileOptions;->mFile:Ljava/io/File;

    iput-object p2, p0, Landroidx/camera/core/VideoCapture$OutputFileOptions;->mFileDescriptor:Ljava/io/FileDescriptor;

    iput-object p3, p0, Landroidx/camera/core/VideoCapture$OutputFileOptions;->mContentResolver:Landroid/content/ContentResolver;

    iput-object p4, p0, Landroidx/camera/core/VideoCapture$OutputFileOptions;->mSaveCollection:Landroid/net/Uri;

    iput-object p5, p0, Landroidx/camera/core/VideoCapture$OutputFileOptions;->mContentValues:Landroid/content/ContentValues;

    if-nez p6, :cond_0

    sget-object p6, Landroidx/camera/core/VideoCapture$OutputFileOptions;->EMPTY_METADATA:Landroidx/camera/core/VideoCapture$Metadata;

    :cond_0
    iput-object p6, p0, Landroidx/camera/core/VideoCapture$OutputFileOptions;->mMetadata:Landroidx/camera/core/VideoCapture$Metadata;

    return-void
.end method


# virtual methods
.method public getContentResolver()Landroid/content/ContentResolver;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Landroidx/camera/core/VideoCapture$OutputFileOptions;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method public getContentValues()Landroid/content/ContentValues;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Landroidx/camera/core/VideoCapture$OutputFileOptions;->mContentValues:Landroid/content/ContentValues;

    return-object v0
.end method

.method public getFile()Ljava/io/File;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Landroidx/camera/core/VideoCapture$OutputFileOptions;->mFile:Ljava/io/File;

    return-object v0
.end method

.method public getFileDescriptor()Ljava/io/FileDescriptor;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Landroidx/camera/core/VideoCapture$OutputFileOptions;->mFileDescriptor:Ljava/io/FileDescriptor;

    return-object v0
.end method

.method public getMetadata()Landroidx/camera/core/VideoCapture$Metadata;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Landroidx/camera/core/VideoCapture$OutputFileOptions;->mMetadata:Landroidx/camera/core/VideoCapture$Metadata;

    return-object v0
.end method

.method public getSaveCollection()Landroid/net/Uri;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Landroidx/camera/core/VideoCapture$OutputFileOptions;->mSaveCollection:Landroid/net/Uri;

    return-object v0
.end method

.method public isSavingToFile()Z
    .locals 1

    invoke-virtual {p0}, Landroidx/camera/core/VideoCapture$OutputFileOptions;->getFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSavingToFileDescriptor()Z
    .locals 1

    invoke-virtual {p0}, Landroidx/camera/core/VideoCapture$OutputFileOptions;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSavingToMediaStore()Z
    .locals 1

    invoke-virtual {p0}, Landroidx/camera/core/VideoCapture$OutputFileOptions;->getSaveCollection()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/camera/core/VideoCapture$OutputFileOptions;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/camera/core/VideoCapture$OutputFileOptions;->getContentValues()Landroid/content/ContentValues;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
