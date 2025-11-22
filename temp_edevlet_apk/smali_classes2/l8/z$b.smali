.class public final Ll8/z$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ll8/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public a:Ll8/z$f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll8/z$f<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field public b:I

.field public c:I

.field public d:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ll8/z$f;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll8/z$f<",
            "TK;TV;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    iput-object v0, p1, Ll8/z$f;->c:Ll8/z$f;

    iput-object v0, p1, Ll8/z$f;->a:Ll8/z$f;

    iput-object v0, p1, Ll8/z$f;->b:Ll8/z$f;

    const/4 v0, 0x1

    iput v0, p1, Ll8/z$f;->j:I

    iget v1, p0, Ll8/z$b;->b:I

    if-lez v1, :cond_0

    iget v2, p0, Ll8/z$b;->d:I

    and-int/lit8 v3, v2, 0x1

    if-nez v3, :cond_0

    add-int/2addr v2, v0

    iput v2, p0, Ll8/z$b;->d:I

    sub-int/2addr v1, v0

    iput v1, p0, Ll8/z$b;->b:I

    iget v1, p0, Ll8/z$b;->c:I

    add-int/2addr v1, v0

    iput v1, p0, Ll8/z$b;->c:I

    :cond_0
    iget-object v1, p0, Ll8/z$b;->a:Ll8/z$f;

    iput-object v1, p1, Ll8/z$f;->a:Ll8/z$f;

    iput-object p1, p0, Ll8/z$b;->a:Ll8/z$f;

    iget p1, p0, Ll8/z$b;->d:I

    add-int/2addr p1, v0

    iput p1, p0, Ll8/z$b;->d:I

    iget v1, p0, Ll8/z$b;->b:I

    if-lez v1, :cond_1

    and-int/lit8 v2, p1, 0x1

    if-nez v2, :cond_1

    add-int/2addr p1, v0

    iput p1, p0, Ll8/z$b;->d:I

    sub-int/2addr v1, v0

    iput v1, p0, Ll8/z$b;->b:I

    iget p1, p0, Ll8/z$b;->c:I

    add-int/2addr p1, v0

    iput p1, p0, Ll8/z$b;->c:I

    :cond_1
    const/4 p1, 0x4

    :goto_0
    iget v1, p0, Ll8/z$b;->d:I

    add-int/lit8 v2, p1, -0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_5

    iget v1, p0, Ll8/z$b;->c:I

    if-nez v1, :cond_2

    iget-object v1, p0, Ll8/z$b;->a:Ll8/z$f;

    iget-object v2, v1, Ll8/z$f;->a:Ll8/z$f;

    iget-object v3, v2, Ll8/z$f;->a:Ll8/z$f;

    iget-object v4, v3, Ll8/z$f;->a:Ll8/z$f;

    iput-object v4, v2, Ll8/z$f;->a:Ll8/z$f;

    iput-object v2, p0, Ll8/z$b;->a:Ll8/z$f;

    iput-object v3, v2, Ll8/z$f;->b:Ll8/z$f;

    iput-object v1, v2, Ll8/z$f;->c:Ll8/z$f;

    iget v4, v1, Ll8/z$f;->j:I

    add-int/2addr v4, v0

    iput v4, v2, Ll8/z$f;->j:I

    iput-object v2, v3, Ll8/z$f;->a:Ll8/z$f;

    iput-object v2, v1, Ll8/z$f;->a:Ll8/z$f;

    goto :goto_2

    :cond_2
    if-ne v1, v0, :cond_3

    iget-object v1, p0, Ll8/z$b;->a:Ll8/z$f;

    iget-object v2, v1, Ll8/z$f;->a:Ll8/z$f;

    iput-object v2, p0, Ll8/z$b;->a:Ll8/z$f;

    iput-object v1, v2, Ll8/z$f;->c:Ll8/z$f;

    iget v3, v1, Ll8/z$f;->j:I

    add-int/2addr v3, v0

    iput v3, v2, Ll8/z$f;->j:I

    iput-object v2, v1, Ll8/z$f;->a:Ll8/z$f;

    goto :goto_1

    :cond_3
    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    :goto_1
    const/4 v1, 0x0

    iput v1, p0, Ll8/z$b;->c:I

    :cond_4
    :goto_2
    mul-int/lit8 p1, p1, 0x2

    goto :goto_0

    :cond_5
    return-void
.end method
