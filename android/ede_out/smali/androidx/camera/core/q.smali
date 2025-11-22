.class public final synthetic Landroidx/camera/core/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/core/ImageAnalysis$Analyzer;


# instance fields
.field public final synthetic a:Landroidx/camera/core/ImageAnalysis$Analyzer;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/core/ImageAnalysis$Analyzer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/core/q;->a:Landroidx/camera/core/ImageAnalysis$Analyzer;

    return-void
.end method


# virtual methods
.method public final analyze(Landroidx/camera/core/ImageProxy;)V
    .locals 1

    iget-object v0, p0, Landroidx/camera/core/q;->a:Landroidx/camera/core/ImageAnalysis$Analyzer;

    invoke-static {v0, p1}, Landroidx/camera/core/ImageAnalysis;->a(Landroidx/camera/core/ImageAnalysis$Analyzer;Landroidx/camera/core/ImageProxy;)V

    return-void
.end method

.method public final synthetic getTargetCoordinateSystem()I
    .locals 1

    invoke-static {p0}, Landroidx/camera/core/s;->a(Landroidx/camera/core/ImageAnalysis$Analyzer;)I

    move-result v0

    return v0
.end method

.method public final synthetic getTargetResolutionOverride()Landroid/util/Size;
    .locals 1

    invoke-static {p0}, Landroidx/camera/core/s;->b(Landroidx/camera/core/ImageAnalysis$Analyzer;)Landroid/util/Size;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic updateTransform(Landroid/graphics/Matrix;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/camera/core/s;->c(Landroidx/camera/core/ImageAnalysis$Analyzer;Landroid/graphics/Matrix;)V

    return-void
.end method
