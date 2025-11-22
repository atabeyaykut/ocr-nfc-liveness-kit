.class public final Lp4/t0;
.super Lp4/u0;
.source "SourceFile"


# instance fields
.field public final transient c:I

.field public final transient d:I

.field public final synthetic e:Lp4/u0;


# direct methods
.method public constructor <init>(Lp4/u0;II)V
    .locals 0

    iput-object p1, p0, Lp4/t0;->e:Lp4/u0;

    invoke-direct {p0}, Lp4/u0;-><init>()V

    iput p2, p0, Lp4/t0;->c:I

    iput p3, p0, Lp4/t0;->d:I

    return-void
.end method


# virtual methods
.method public final get(I)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lp4/t0;->d:I

    invoke-static {p1, v0}, Lb8/f;->A0(II)V

    iget v0, p0, Lp4/t0;->c:I

    add-int/2addr p1, v0

    iget-object v0, p0, Lp4/t0;->e:Lp4/u0;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final l()I
    .locals 2

    iget-object v0, p0, Lp4/t0;->e:Lp4/u0;

    invoke-virtual {v0}, Lp4/o0;->m()I

    move-result v0

    iget v1, p0, Lp4/t0;->c:I

    add-int/2addr v0, v1

    iget v1, p0, Lp4/t0;->d:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final m()I
    .locals 2

    iget-object v0, p0, Lp4/t0;->e:Lp4/u0;

    invoke-virtual {v0}, Lp4/o0;->m()I

    move-result v0

    iget v1, p0, Lp4/t0;->c:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final size()I
    .locals 1

    iget v0, p0, Lp4/t0;->d:I

    return v0
.end method

.method public final bridge synthetic subList(II)Ljava/util/List;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lp4/t0;->w(II)Lp4/u0;

    move-result-object p1

    return-object p1
.end method

.method public final u()[Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lp4/t0;->e:Lp4/u0;

    invoke-virtual {v0}, Lp4/o0;->u()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final w(II)Lp4/u0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lp4/u0;"
        }
    .end annotation

    iget v0, p0, Lp4/t0;->d:I

    invoke-static {p1, p2, v0}, Lb8/f;->M0(III)V

    iget v0, p0, Lp4/t0;->c:I

    add-int/2addr p1, v0

    add-int/2addr p2, v0

    iget-object v0, p0, Lp4/t0;->e:Lp4/u0;

    invoke-virtual {v0, p1, p2}, Lp4/u0;->w(II)Lp4/u0;

    move-result-object p1

    return-object p1
.end method
