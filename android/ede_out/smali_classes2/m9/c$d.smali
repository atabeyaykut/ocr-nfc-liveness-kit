.class public final Lm9/c$d;
.super Lm9/c;
.source "SourceFile"

# interfaces
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm9/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lm9/c<",
        "TE;>;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# instance fields
.field public final a:Lm9/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lm9/c<",
            "TE;>;"
        }
    .end annotation
.end field

.field public final b:I

.field public final c:I


# direct methods
.method public constructor <init>(Lm9/c;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lm9/c<",
            "+TE;>;II)V"
        }
    .end annotation

    .line 1
    const-string v0, "list"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lm9/c;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lm9/c$d;->a:Lm9/c;

    .line 10
    .line 11
    iput p2, p0, Lm9/c$d;->b:I

    .line 12
    .line 13
    invoke-virtual {p1}, Lm9/a;->l()I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    invoke-static {p2, p3, p1}, Lm9/c$a;->c(III)V

    .line 18
    .line 19
    .line 20
    sub-int/2addr p3, p2

    .line 21
    iput p3, p0, Lm9/c$d;->c:I

    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public final get(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    iget v0, p0, Lm9/c$d;->c:I

    invoke-static {p1, v0}, Lm9/c$a;->a(II)V

    iget v0, p0, Lm9/c$d;->b:I

    add-int/2addr v0, p1

    iget-object p1, p0, Lm9/c$d;->a:Lm9/c;

    invoke-virtual {p1, v0}, Lm9/c;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final l()I
    .locals 1

    iget v0, p0, Lm9/c$d;->c:I

    return v0
.end method
