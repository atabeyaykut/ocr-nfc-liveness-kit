.class public final Ll0/g;
.super Ll0/b;
.source "SourceFile"


# instance fields
.field public final y:Lf0/d;


# direct methods
.method public constructor <init>(Ld0/l;Ll0/e;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Ll0/b;-><init>(Ld0/l;Ll0/e;)V

    new-instance v0, Lk0/m;

    const-string v1, "__container"

    iget-object p2, p2, Ll0/e;->a:Ljava/util/List;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p2}, Lk0/m;-><init>(Ljava/lang/String;ZLjava/util/List;)V

    new-instance p2, Lf0/d;

    invoke-direct {p2, p1, p0, v0}, Lf0/d;-><init>(Ld0/l;Ll0/b;Lk0/m;)V

    iput-object p2, p0, Ll0/g;->y:Lf0/d;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lf0/d;->b(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public final d(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Ll0/b;->d(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    iget-object p2, p0, Ll0/b;->l:Landroid/graphics/Matrix;

    iget-object v0, p0, Ll0/g;->y:Lf0/d;

    invoke-virtual {v0, p1, p2, p3}, Lf0/d;->d(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    return-void
.end method

.method public final j(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 1
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Ll0/g;->y:Lf0/d;

    invoke-virtual {v0, p1, p2, p3}, Lf0/d;->g(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    return-void
.end method

.method public final n(Li0/e;ILjava/util/ArrayList;Li0/e;)V
    .locals 1

    iget-object v0, p0, Ll0/g;->y:Lf0/d;

    invoke-virtual {v0, p1, p2, p3, p4}, Lf0/d;->c(Li0/e;ILjava/util/ArrayList;Li0/e;)V

    return-void
.end method
