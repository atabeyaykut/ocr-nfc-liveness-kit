.class public final Lo4/d;
.super Lo4/e;
.source "SourceFile"


# instance fields
.field public final transient c:I

.field public final transient d:I

.field public final synthetic e:Lo4/e;


# direct methods
.method public constructor <init>(Lo4/e;II)V
    .locals 0

    iput-object p1, p0, Lo4/d;->e:Lo4/e;

    invoke-direct {p0}, Lo4/e;-><init>()V

    iput p2, p0, Lo4/d;->c:I

    iput p3, p0, Lo4/d;->d:I

    return-void
.end method


# virtual methods
.method public final get(I)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lo4/d;->d:I

    invoke-static {p1, v0}, Lo4/u;->a(II)V

    iget v0, p0, Lo4/d;->c:I

    add-int/2addr p1, v0

    iget-object v0, p0, Lo4/d;->e:Lo4/e;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final l()I
    .locals 2

    iget-object v0, p0, Lo4/d;->e:Lo4/e;

    invoke-virtual {v0}, Lo4/b;->m()I

    move-result v0

    iget v1, p0, Lo4/d;->c:I

    add-int/2addr v0, v1

    iget v1, p0, Lo4/d;->d:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final m()I
    .locals 2

    iget-object v0, p0, Lo4/d;->e:Lo4/e;

    invoke-virtual {v0}, Lo4/b;->m()I

    move-result v0

    iget v1, p0, Lo4/d;->c:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final o()[Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lo4/d;->e:Lo4/e;

    invoke-virtual {v0}, Lo4/b;->o()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .locals 1

    iget v0, p0, Lo4/d;->d:I

    return v0
.end method

.method public final bridge synthetic subList(II)Ljava/util/List;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lo4/d;->u(II)Lo4/e;

    move-result-object p1

    return-object p1
.end method

.method public final u(II)Lo4/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lo4/e;"
        }
    .end annotation

    iget v0, p0, Lo4/d;->d:I

    invoke-static {p1, p2, v0}, Lo4/u;->c(III)V

    iget v0, p0, Lo4/d;->c:I

    add-int/2addr p1, v0

    add-int/2addr p2, v0

    iget-object v0, p0, Lo4/d;->e:Lo4/e;

    invoke-virtual {v0, p1, p2}, Lo4/e;->u(II)Lo4/e;

    move-result-object p1

    return-object p1
.end method
