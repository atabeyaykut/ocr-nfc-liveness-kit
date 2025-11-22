.class Landroidx/camera/extensions/internal/sessionprocessor/Camera2SessionConfigBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/extensions/internal/sessionprocessor/Camera2SessionConfigBuilder$SessionConfigImpl;
    }
.end annotation


# instance fields
.field private mCamera2OutputConfigs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/camera/extensions/internal/sessionprocessor/Camera2OutputConfig;",
            ">;"
        }
    .end annotation
.end field

.field private mSessionParameters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mSessionTemplateId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Landroidx/camera/extensions/internal/sessionprocessor/Camera2SessionConfigBuilder;->mSessionTemplateId:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/camera/extensions/internal/sessionprocessor/Camera2SessionConfigBuilder;->mSessionParameters:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/camera/extensions/internal/sessionprocessor/Camera2SessionConfigBuilder;->mCamera2OutputConfigs:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addOutputConfig(Landroidx/camera/extensions/internal/sessionprocessor/Camera2OutputConfig;)Landroidx/camera/extensions/internal/sessionprocessor/Camera2SessionConfigBuilder;
    .locals 1
    .param p1    # Landroidx/camera/extensions/internal/sessionprocessor/Camera2OutputConfig;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Landroidx/camera/extensions/internal/sessionprocessor/Camera2SessionConfigBuilder;->mCamera2OutputConfigs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addSessionParameter(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Landroidx/camera/extensions/internal/sessionprocessor/Camera2SessionConfigBuilder;
    .locals 1
    .param p1    # Landroid/hardware/camera2/CaptureRequest$Key;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "TT;>;TT;)",
            "Landroidx/camera/extensions/internal/sessionprocessor/Camera2SessionConfigBuilder;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/camera/extensions/internal/sessionprocessor/Camera2SessionConfigBuilder;->mSessionParameters:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public build()Landroidx/camera/extensions/internal/sessionprocessor/Camera2SessionConfig;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Landroidx/camera/extensions/internal/sessionprocessor/Camera2SessionConfigBuilder$SessionConfigImpl;

    iget v1, p0, Landroidx/camera/extensions/internal/sessionprocessor/Camera2SessionConfigBuilder;->mSessionTemplateId:I

    iget-object v2, p0, Landroidx/camera/extensions/internal/sessionprocessor/Camera2SessionConfigBuilder;->mSessionParameters:Ljava/util/Map;

    iget-object v3, p0, Landroidx/camera/extensions/internal/sessionprocessor/Camera2SessionConfigBuilder;->mCamera2OutputConfigs:Ljava/util/List;

    invoke-direct {v0, v1, v2, v3}, Landroidx/camera/extensions/internal/sessionprocessor/Camera2SessionConfigBuilder$SessionConfigImpl;-><init>(ILjava/util/Map;Ljava/util/List;)V

    return-object v0
.end method

.method public getCamera2OutputConfigs()Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/camera/extensions/internal/sessionprocessor/Camera2OutputConfig;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/camera/extensions/internal/sessionprocessor/Camera2SessionConfigBuilder;->mCamera2OutputConfigs:Ljava/util/List;

    return-object v0
.end method

.method public getSessionParameters()Ljava/util/Map;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/camera/extensions/internal/sessionprocessor/Camera2SessionConfigBuilder;->mSessionParameters:Ljava/util/Map;

    return-object v0
.end method

.method public getSessionTemplateId()I
    .locals 1

    iget v0, p0, Landroidx/camera/extensions/internal/sessionprocessor/Camera2SessionConfigBuilder;->mSessionTemplateId:I

    return v0
.end method

.method public setSessionTemplateId(I)Landroidx/camera/extensions/internal/sessionprocessor/Camera2SessionConfigBuilder;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput p1, p0, Landroidx/camera/extensions/internal/sessionprocessor/Camera2SessionConfigBuilder;->mSessionTemplateId:I

    return-object p0
.end method
