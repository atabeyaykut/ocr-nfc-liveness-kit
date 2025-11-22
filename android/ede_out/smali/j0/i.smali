.class public final Lj0/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj0/m;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lj0/m<",
        "Landroid/graphics/PointF;",
        "Landroid/graphics/PointF;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lj0/b;

.field public final b:Lj0/b;


# direct methods
.method public constructor <init>(Lj0/b;Lj0/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj0/i;->a:Lj0/b;

    iput-object p2, p0, Lj0/i;->b:Lj0/b;

    return-void
.end method


# virtual methods
.method public final c()Lg0/a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lg0/a<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation

    new-instance v0, Lg0/m;

    iget-object v1, p0, Lj0/i;->a:Lj0/b;

    invoke-virtual {v1}, Lj0/b;->c()Lg0/a;

    move-result-object v1

    iget-object v2, p0, Lj0/i;->b:Lj0/b;

    invoke-virtual {v2}, Lj0/b;->c()Lg0/a;

    move-result-object v2

    check-cast v1, Lg0/c;

    check-cast v2, Lg0/c;

    invoke-direct {v0, v1, v2}, Lg0/m;-><init>(Lg0/c;Lg0/c;)V

    return-object v0
.end method

.method public final d()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lq0/a<",
            "Landroid/graphics/PointF;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Cannot call getKeyframes on AnimatableSplitDimensionPathValue."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final f()Z
    .locals 1

    iget-object v0, p0, Lj0/i;->a:Lj0/b;

    invoke-virtual {v0}, Lj0/n;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lj0/i;->b:Lj0/b;

    invoke-virtual {v0}, Lj0/n;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
