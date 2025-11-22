.class public final Landroidx/camera/core/VideoCapture$OutputFileOptions$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/core/VideoCapture$OutputFileOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mContentValues:Landroid/content/ContentValues;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mFile:Ljava/io/File;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mFileDescriptor:Ljava/io/FileDescriptor;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mMetadata:Landroidx/camera/core/VideoCapture$Metadata;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mSaveCollection:Landroid/net/Uri;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)V
    .locals 0
    .param p1    # Landroid/content/ContentResolver;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/content/ContentValues;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/core/VideoCapture$OutputFileOptions$Builder;->mContentResolver:Landroid/content/ContentResolver;

    iput-object p2, p0, Landroidx/camera/core/VideoCapture$OutputFileOptions$Builder;->mSaveCollection:Landroid/net/Uri;

    iput-object p3, p0, Landroidx/camera/core/VideoCapture$OutputFileOptions$Builder;->mContentValues:Landroid/content/ContentValues;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 0
    .param p1    # Ljava/io/File;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/core/VideoCapture$OutputFileOptions$Builder;->mFile:Ljava/io/File;

    return-void
.end method

.method public constructor <init>(Ljava/io/FileDescriptor;)V
    .locals 2
    .param p1    # Ljava/io/FileDescriptor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Using a FileDescriptor to record a video is only supported for Android 8.0 or above."

    invoke-static {v0, v1}, Landroidx/core/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    iput-object p1, p0, Landroidx/camera/core/VideoCapture$OutputFileOptions$Builder;->mFileDescriptor:Ljava/io/FileDescriptor;

    return-void
.end method


# virtual methods
.method public build()Landroidx/camera/core/VideoCapture$OutputFileOptions;
    .locals 8
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v7, Landroidx/camera/core/VideoCapture$OutputFileOptions;

    iget-object v1, p0, Landroidx/camera/core/VideoCapture$OutputFileOptions$Builder;->mFile:Ljava/io/File;

    iget-object v2, p0, Landroidx/camera/core/VideoCapture$OutputFileOptions$Builder;->mFileDescriptor:Ljava/io/FileDescriptor;

    iget-object v3, p0, Landroidx/camera/core/VideoCapture$OutputFileOptions$Builder;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v4, p0, Landroidx/camera/core/VideoCapture$OutputFileOptions$Builder;->mSaveCollection:Landroid/net/Uri;

    iget-object v5, p0, Landroidx/camera/core/VideoCapture$OutputFileOptions$Builder;->mContentValues:Landroid/content/ContentValues;

    iget-object v6, p0, Landroidx/camera/core/VideoCapture$OutputFileOptions$Builder;->mMetadata:Landroidx/camera/core/VideoCapture$Metadata;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Landroidx/camera/core/VideoCapture$OutputFileOptions;-><init>(Ljava/io/File;Ljava/io/FileDescriptor;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Landroidx/camera/core/VideoCapture$Metadata;)V

    return-object v7
.end method

.method public setMetadata(Landroidx/camera/core/VideoCapture$Metadata;)Landroidx/camera/core/VideoCapture$OutputFileOptions$Builder;
    .locals 0
    .param p1    # Landroidx/camera/core/VideoCapture$Metadata;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, Landroidx/camera/core/VideoCapture$OutputFileOptions$Builder;->mMetadata:Landroidx/camera/core/VideoCapture$Metadata;

    return-object p0
.end method
