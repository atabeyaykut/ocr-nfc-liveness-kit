.class abstract Landroidx/camera/core/impl/StateObservable$ErrorWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/core/impl/StateObservable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ErrorWrapper"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static wrap(Ljava/lang/Throwable;)Landroidx/camera/core/impl/StateObservable$ErrorWrapper;
    .locals 1
    .param p0    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Landroidx/camera/core/impl/AutoValue_StateObservable_ErrorWrapper;

    invoke-direct {v0, p0}, Landroidx/camera/core/impl/AutoValue_StateObservable_ErrorWrapper;-><init>(Ljava/lang/Throwable;)V

    return-object v0
.end method


# virtual methods
.method public abstract getError()Ljava/lang/Throwable;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method
