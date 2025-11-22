.class public final Lr4/w6;
.super Lr4/x6;
.source "SourceFile"


# instance fields
.field public final transient c:I

.field public final transient d:I

.field public final synthetic e:Lr4/x6;


# direct methods
.method public constructor <init>(Lr4/x6;II)V
    .locals 0

    iput-object p1, p0, Lr4/w6;->e:Lr4/x6;

    invoke-direct {p0}, Lr4/x6;-><init>()V

    iput p2, p0, Lr4/w6;->c:I

    iput p3, p0, Lr4/w6;->d:I

    return-void
.end method


# virtual methods
.method public final get(I)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lr4/w6;->d:I

    invoke-static {p1, v0}, Lc5/w;->N(II)V

    iget v0, p0, Lr4/w6;->c:I

    add-int/2addr p1, v0

    iget-object v0, p0, Lr4/w6;->e:Lr4/x6;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final l()I
    .locals 2

    iget-object v0, p0, Lr4/w6;->e:Lr4/x6;

    invoke-virtual {v0}, Lr4/u6;->m()I

    move-result v0

    iget v1, p0, Lr4/w6;->c:I

    add-int/2addr v0, v1

    iget v1, p0, Lr4/w6;->d:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final m()I
    .locals 2

    iget-object v0, p0, Lr4/w6;->e:Lr4/x6;

    invoke-virtual {v0}, Lr4/u6;->m()I

    move-result v0

    iget v1, p0, Lr4/w6;->c:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final o()[Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lr4/w6;->e:Lr4/x6;

    invoke-virtual {v0}, Lr4/u6;->o()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .locals 1

    iget v0, p0, Lr4/w6;->d:I

    return v0
.end method

.method public final bridge synthetic subList(II)Ljava/util/List;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lr4/w6;->u(II)Lr4/x6;

    move-result-object p1

    return-object p1
.end method

.method public final u(II)Lr4/x6;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lr4/x6;"
        }
    .end annotation

    iget v0, p0, Lr4/w6;->d:I

    invoke-static {p1, p2, v0}, Lc5/w;->T(III)V

    iget v0, p0, Lr4/w6;->c:I

    add-int/2addr p1, v0

    add-int/2addr p2, v0

    iget-object v0, p0, Lr4/w6;->e:Lr4/x6;

    invoke-virtual {v0, p1, p2}, Lr4/x6;->u(II)Lr4/x6;

    move-result-object p1

    return-object p1
.end method
