.class Landroidx/camera/extensions/internal/sessionprocessor/AdvancedSessionProcessor$RequestProcessorImplAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/extensions/impl/advanced/RequestProcessorImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/extensions/internal/sessionprocessor/AdvancedSessionProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RequestProcessorImplAdapter"
.end annotation


# instance fields
.field private final mRequestProcessor:Landroidx/camera/core/impl/RequestProcessor;

.field final synthetic this$0:Landroidx/camera/extensions/internal/sessionprocessor/AdvancedSessionProcessor;


# direct methods
.method public constructor <init>(Landroidx/camera/extensions/internal/sessionprocessor/AdvancedSessionProcessor;Landroidx/camera/core/impl/RequestProcessor;)V
    .locals 0
    .param p1    # Landroidx/camera/extensions/internal/sessionprocessor/AdvancedSessionProcessor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Landroidx/camera/extensions/internal/sessionprocessor/AdvancedSessionProcessor$RequestProcessorImplAdapter;->this$0:Landroidx/camera/extensions/internal/sessionprocessor/AdvancedSessionProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroidx/camera/extensions/internal/sessionprocessor/AdvancedSessionProcessor$RequestProcessorImplAdapter;->mRequestProcessor:Landroidx/camera/core/impl/RequestProcessor;

    return-void
.end method


# virtual methods
.method public abortCaptures()V
    .locals 1

    iget-object v0, p0, Landroidx/camera/extensions/internal/sessionprocessor/AdvancedSessionProcessor$RequestProcessorImplAdapter;->mRequestProcessor:Landroidx/camera/core/impl/RequestProcessor;

    invoke-interface {v0}, Landroidx/camera/core/impl/RequestProcessor;->abortCaptures()V

    return-void
.end method

.method public setImageProcessor(ILandroidx/camera/extensions/impl/advanced/ImageProcessorImpl;)V
    .locals 2
    .param p2    # Landroidx/camera/extensions/impl/advanced/ImageProcessorImpl;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Landroidx/camera/extensions/internal/sessionprocessor/AdvancedSessionProcessor$RequestProcessorImplAdapter;->this$0:Landroidx/camera/extensions/internal/sessionprocessor/AdvancedSessionProcessor;

    new-instance v1, Landroidx/camera/extensions/internal/sessionprocessor/AdvancedSessionProcessor$ImageProcessorAdapter;

    invoke-direct {v1, p2}, Landroidx/camera/extensions/internal/sessionprocessor/AdvancedSessionProcessor$ImageProcessorAdapter;-><init>(Landroidx/camera/extensions/impl/advanced/ImageProcessorImpl;)V

    invoke-virtual {v0, p1, v1}, Landroidx/camera/extensions/internal/sessionprocessor/SessionProcessorBase;->setImageProcessor(ILandroidx/camera/extensions/internal/sessionprocessor/ImageProcessor;)V

    return-void
.end method

.method public setRepeating(Landroidx/camera/extensions/impl/advanced/RequestProcessorImpl$Request;Landroidx/camera/extensions/impl/advanced/RequestProcessorImpl$Callback;)I
    .locals 2
    .param p1    # Landroidx/camera/extensions/impl/advanced/RequestProcessorImpl$Request;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/camera/extensions/impl/advanced/RequestProcessorImpl$Callback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Landroidx/camera/extensions/internal/sessionprocessor/AdvancedSessionProcessor$RequestProcessorImplAdapter;->mRequestProcessor:Landroidx/camera/core/impl/RequestProcessor;

    new-instance v1, Landroidx/camera/extensions/internal/sessionprocessor/AdvancedSessionProcessor$RequestAdapter;

    invoke-direct {v1, p1}, Landroidx/camera/extensions/internal/sessionprocessor/AdvancedSessionProcessor$RequestAdapter;-><init>(Landroidx/camera/extensions/impl/advanced/RequestProcessorImpl$Request;)V

    new-instance p1, Landroidx/camera/extensions/internal/sessionprocessor/AdvancedSessionProcessor$CallbackAdapter;

    invoke-direct {p1, p2}, Landroidx/camera/extensions/internal/sessionprocessor/AdvancedSessionProcessor$CallbackAdapter;-><init>(Landroidx/camera/extensions/impl/advanced/RequestProcessorImpl$Callback;)V

    invoke-interface {v0, v1, p1}, Landroidx/camera/core/impl/RequestProcessor;->setRepeating(Landroidx/camera/core/impl/RequestProcessor$Request;Landroidx/camera/core/impl/RequestProcessor$Callback;)I

    move-result p1

    return p1
.end method

.method public stopRepeating()V
    .locals 1

    iget-object v0, p0, Landroidx/camera/extensions/internal/sessionprocessor/AdvancedSessionProcessor$RequestProcessorImplAdapter;->mRequestProcessor:Landroidx/camera/core/impl/RequestProcessor;

    invoke-interface {v0}, Landroidx/camera/core/impl/RequestProcessor;->stopRepeating()V

    return-void
.end method

.method public submit(Landroidx/camera/extensions/impl/advanced/RequestProcessorImpl$Request;Landroidx/camera/extensions/impl/advanced/RequestProcessorImpl$Callback;)I
    .locals 2
    .param p1    # Landroidx/camera/extensions/impl/advanced/RequestProcessorImpl$Request;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/camera/extensions/impl/advanced/RequestProcessorImpl$Callback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Landroidx/camera/extensions/internal/sessionprocessor/AdvancedSessionProcessor$RequestProcessorImplAdapter;->mRequestProcessor:Landroidx/camera/core/impl/RequestProcessor;

    new-instance v1, Landroidx/camera/extensions/internal/sessionprocessor/AdvancedSessionProcessor$RequestAdapter;

    invoke-direct {v1, p1}, Landroidx/camera/extensions/internal/sessionprocessor/AdvancedSessionProcessor$RequestAdapter;-><init>(Landroidx/camera/extensions/impl/advanced/RequestProcessorImpl$Request;)V

    new-instance p1, Landroidx/camera/extensions/internal/sessionprocessor/AdvancedSessionProcessor$CallbackAdapter;

    invoke-direct {p1, p2}, Landroidx/camera/extensions/internal/sessionprocessor/AdvancedSessionProcessor$CallbackAdapter;-><init>(Landroidx/camera/extensions/impl/advanced/RequestProcessorImpl$Callback;)V

    invoke-interface {v0, v1, p1}, Landroidx/camera/core/impl/RequestProcessor;->submit(Landroidx/camera/core/impl/RequestProcessor$Request;Landroidx/camera/core/impl/RequestProcessor$Callback;)I

    move-result p1

    return p1
.end method

.method public submit(Ljava/util/List;Landroidx/camera/extensions/impl/advanced/RequestProcessorImpl$Callback;)I
    .locals 3
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/camera/extensions/impl/advanced/RequestProcessorImpl$Callback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/camera/extensions/impl/advanced/RequestProcessorImpl$Request;",
            ">;",
            "Landroidx/camera/extensions/impl/advanced/RequestProcessorImpl$Callback;",
            ")I"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/extensions/impl/advanced/RequestProcessorImpl$Request;

    new-instance v2, Landroidx/camera/extensions/internal/sessionprocessor/AdvancedSessionProcessor$RequestAdapter;

    invoke-direct {v2, v1}, Landroidx/camera/extensions/internal/sessionprocessor/AdvancedSessionProcessor$RequestAdapter;-><init>(Landroidx/camera/extensions/impl/advanced/RequestProcessorImpl$Request;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroidx/camera/extensions/internal/sessionprocessor/AdvancedSessionProcessor$RequestProcessorImplAdapter;->mRequestProcessor:Landroidx/camera/core/impl/RequestProcessor;

    new-instance v1, Landroidx/camera/extensions/internal/sessionprocessor/AdvancedSessionProcessor$CallbackAdapter;

    invoke-direct {v1, p2}, Landroidx/camera/extensions/internal/sessionprocessor/AdvancedSessionProcessor$CallbackAdapter;-><init>(Landroidx/camera/extensions/impl/advanced/RequestProcessorImpl$Callback;)V

    invoke-interface {p1, v0, v1}, Landroidx/camera/core/impl/RequestProcessor;->submit(Ljava/util/List;Landroidx/camera/core/impl/RequestProcessor$Callback;)I

    move-result p1

    return p1
.end method
