.class public Landroidx/camera/core/MeteringPoint;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x15
.end annotation


# instance fields
.field private mNormalizedX:F

.field private mNormalizedY:F

.field private mSize:F

.field private mSurfaceAspectRatio:Landroid/util/Rational;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(FFFLandroid/util/Rational;)V
    .locals 0
    .param p4    # Landroid/util/Rational;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/camera/core/MeteringPoint;->mNormalizedX:F

    iput p2, p0, Landroidx/camera/core/MeteringPoint;->mNormalizedY:F

    iput p3, p0, Landroidx/camera/core/MeteringPoint;->mSize:F

    iput-object p4, p0, Landroidx/camera/core/MeteringPoint;->mSurfaceAspectRatio:Landroid/util/Rational;

    return-void
.end method


# virtual methods
.method public getSize()F
    .locals 1

    iget v0, p0, Landroidx/camera/core/MeteringPoint;->mSize:F

    return v0
.end method

.method public getSurfaceAspectRatio()Landroid/util/Rational;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    iget-object v0, p0, Landroidx/camera/core/MeteringPoint;->mSurfaceAspectRatio:Landroid/util/Rational;

    return-object v0
.end method

.method public getX()F
    .locals 1
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    iget v0, p0, Landroidx/camera/core/MeteringPoint;->mNormalizedX:F

    return v0
.end method

.method public getY()F
    .locals 1
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    iget v0, p0, Landroidx/camera/core/MeteringPoint;->mNormalizedY:F

    return v0
.end method
