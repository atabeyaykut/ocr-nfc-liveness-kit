.class public final synthetic Landroidx/camera/core/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/core/impl/SessionConfig$ErrorListener;


# instance fields
.field public final synthetic a:Landroidx/camera/core/ImageAnalysis;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Landroidx/camera/core/impl/ImageAnalysisConfig;

.field public final synthetic d:Landroid/util/Size;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/core/ImageAnalysis;Ljava/lang/String;Landroidx/camera/core/impl/ImageAnalysisConfig;Landroid/util/Size;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/core/p;->a:Landroidx/camera/core/ImageAnalysis;

    iput-object p2, p0, Landroidx/camera/core/p;->b:Ljava/lang/String;

    iput-object p3, p0, Landroidx/camera/core/p;->c:Landroidx/camera/core/impl/ImageAnalysisConfig;

    iput-object p4, p0, Landroidx/camera/core/p;->d:Landroid/util/Size;

    return-void
.end method


# virtual methods
.method public final onError(Landroidx/camera/core/impl/SessionConfig;Landroidx/camera/core/impl/SessionConfig$SessionError;)V
    .locals 6

    iget-object v0, p0, Landroidx/camera/core/p;->a:Landroidx/camera/core/ImageAnalysis;

    iget-object v1, p0, Landroidx/camera/core/p;->b:Ljava/lang/String;

    iget-object v2, p0, Landroidx/camera/core/p;->c:Landroidx/camera/core/impl/ImageAnalysisConfig;

    iget-object v3, p0, Landroidx/camera/core/p;->d:Landroid/util/Size;

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Landroidx/camera/core/ImageAnalysis;->b(Landroidx/camera/core/ImageAnalysis;Ljava/lang/String;Landroidx/camera/core/impl/ImageAnalysisConfig;Landroid/util/Size;Landroidx/camera/core/impl/SessionConfig;Landroidx/camera/core/impl/SessionConfig$SessionError;)V

    return-void
.end method
