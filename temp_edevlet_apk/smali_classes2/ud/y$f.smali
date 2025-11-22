.class public final Lud/y$f;
.super Lud/y;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lud/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lud/y<",
        "Lrc/q;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/reflect/Method;

.field public final b:I


# direct methods
.method public constructor <init>(ILjava/lang/reflect/Method;)V
    .locals 0

    invoke-direct {p0}, Lud/y;-><init>()V

    iput-object p2, p0, Lud/y$f;->a:Ljava/lang/reflect/Method;

    iput p1, p0, Lud/y$f;->b:I

    return-void
.end method


# virtual methods
.method public final a(Lud/a0;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p2, Lrc/q;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p2, :cond_1

    .line 5
    .line 6
    iget-object p1, p1, Lud/a0;->f:Lrc/q$a;

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    iget-object v1, p2, Lrc/q;->a:[Ljava/lang/String;

    .line 12
    .line 13
    array-length v1, v1

    .line 14
    div-int/lit8 v1, v1, 0x2

    .line 15
    .line 16
    :goto_0
    if-ge v0, v1, :cond_0

    .line 17
    .line 18
    invoke-virtual {p2, v0}, Lrc/q;->o(I)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-virtual {p2, v0}, Lrc/q;->w(I)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    invoke-virtual {p1, v2, v3}, Lrc/q$a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    add-int/lit8 v0, v0, 0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    return-void

    .line 33
    :cond_1
    new-array p1, v0, [Ljava/lang/Object;

    .line 34
    .line 35
    iget p2, p0, Lud/y$f;->b:I

    .line 36
    .line 37
    const-string v0, "Headers parameter must not be null."

    .line 38
    .line 39
    iget-object v1, p0, Lud/y$f;->a:Ljava/lang/reflect/Method;

    .line 40
    .line 41
    invoke-static {v1, p2, v0, p1}, Lud/h0;->k(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    throw p1
.end method
