.class public final Ls8/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls8/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Ls8/a;",
            ">;"
        }
    .end annotation
.end field

.field public final b:J

.field public final c:J

.field public final d:F

.field public final e:F

.field public final f:F

.field public final g:F


# direct methods
.method public constructor <init>(Lcom/yalantis/ucrop/view/GestureCropImageView;FFFF)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Ls8/a$b;->a:Ljava/lang/ref/WeakReference;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Ls8/a$b;->c:J

    const-wide/16 v0, 0xc8

    iput-wide v0, p0, Ls8/a$b;->b:J

    iput p2, p0, Ls8/a$b;->d:F

    iput p3, p0, Ls8/a$b;->e:F

    iput p4, p0, Ls8/a$b;->f:F

    iput p5, p0, Ls8/a$b;->g:F

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Ls8/a$b;->a:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ls8/a;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 13
    .line 14
    .line 15
    move-result-wide v1

    .line 16
    iget-wide v3, p0, Ls8/a$b;->c:J

    .line 17
    .line 18
    sub-long/2addr v1, v3

    .line 19
    iget-wide v3, p0, Ls8/a$b;->b:J

    .line 20
    .line 21
    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->min(JJ)J

    .line 22
    .line 23
    .line 24
    move-result-wide v1

    .line 25
    long-to-float v1, v1

    .line 26
    long-to-float v2, v3

    .line 27
    iget v3, p0, Ls8/a$b;->e:F

    .line 28
    .line 29
    invoke-static {v1, v3, v2}, Lb8/f;->A(FFF)F

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    cmpg-float v1, v1, v2

    .line 34
    .line 35
    if-gez v1, :cond_1

    .line 36
    .line 37
    iget v1, p0, Ls8/a$b;->d:F

    .line 38
    .line 39
    add-float/2addr v1, v3

    .line 40
    iget v2, p0, Ls8/a$b;->f:F

    .line 41
    .line 42
    iget v3, p0, Ls8/a$b;->g:F

    .line 43
    .line 44
    invoke-virtual {v0, v1, v2, v3}, Ls8/a;->j(FFF)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    const/4 v1, 0x1

    .line 52
    invoke-virtual {v0, v1}, Ls8/a;->setImageToWrapCropBounds(Z)V

    .line 53
    .line 54
    .line 55
    :goto_0
    return-void
.end method
