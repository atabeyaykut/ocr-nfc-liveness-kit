.class public final Lm4/a0;
.super Lm4/b0;
.source "SourceFile"


# instance fields
.field public final transient c:I

.field public final transient d:I

.field public final synthetic e:Lm4/b0;


# direct methods
.method public constructor <init>(Lm4/b0;II)V
    .locals 0

    iput-object p1, p0, Lm4/a0;->e:Lm4/b0;

    invoke-direct {p0}, Lm4/b0;-><init>()V

    iput p2, p0, Lm4/a0;->c:I

    iput p3, p0, Lm4/a0;->d:I

    return-void
.end method


# virtual methods
.method public final get(I)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lm4/a0;->d:I

    invoke-static {p1, v0}, Lb8/f;->E0(II)V

    iget v0, p0, Lm4/a0;->c:I

    add-int/2addr p1, v0

    iget-object v0, p0, Lm4/a0;->e:Lm4/b0;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final l()I
    .locals 2

    iget-object v0, p0, Lm4/a0;->e:Lm4/b0;

    invoke-virtual {v0}, Lm4/y;->m()I

    move-result v0

    iget v1, p0, Lm4/a0;->c:I

    add-int/2addr v0, v1

    iget v1, p0, Lm4/a0;->d:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final m()I
    .locals 2

    iget-object v0, p0, Lm4/a0;->e:Lm4/b0;

    invoke-virtual {v0}, Lm4/y;->m()I

    move-result v0

    iget v1, p0, Lm4/a0;->c:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final size()I
    .locals 1

    iget v0, p0, Lm4/a0;->d:I

    return v0
.end method

.method public final bridge synthetic subList(II)Ljava/util/List;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lm4/a0;->y(II)Lm4/b0;

    move-result-object p1

    return-object p1
.end method

.method public final w()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final x()[Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lm4/a0;->e:Lm4/b0;

    invoke-virtual {v0}, Lm4/y;->x()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final y(II)Lm4/b0;
    .locals 1

    iget v0, p0, Lm4/a0;->d:I

    invoke-static {p1, p2, v0}, Lb8/f;->N0(III)V

    iget v0, p0, Lm4/a0;->c:I

    add-int/2addr p1, v0

    add-int/2addr p2, v0

    iget-object v0, p0, Lm4/a0;->e:Lm4/b0;

    invoke-virtual {v0, p1, p2}, Lm4/b0;->y(II)Lm4/b0;

    move-result-object p1

    return-object p1
.end method
