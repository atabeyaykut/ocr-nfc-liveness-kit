.class public abstract Lio/realm/x;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Lio/realm/a;

.field public final b:Lio/realm/internal/OsList;

.field public final c:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/realm/a;Lio/realm/internal/OsList;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/a;",
            "Lio/realm/internal/OsList;",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/realm/x;->a:Lio/realm/a;

    iput-object p3, p0, Lio/realm/x;->c:Ljava/lang/Class;

    iput-object p2, p0, Lio/realm/x;->b:Lio/realm/internal/OsList;

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/Object;)V
.end method

.method public final b(I)V
    .locals 6

    .line 1
    iget-object v0, p0, Lio/realm/x;->b:Lio/realm/internal/OsList;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/realm/internal/OsList;->W()J

    .line 4
    .line 5
    .line 6
    move-result-wide v1

    .line 7
    const-wide/32 v3, 0x7fffffff

    .line 8
    .line 9
    .line 10
    cmp-long v5, v1, v3

    .line 11
    .line 12
    if-gez v5, :cond_0

    .line 13
    .line 14
    long-to-int v2, v1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const v2, 0x7fffffff

    .line 17
    .line 18
    .line 19
    :goto_0
    if-ltz p1, :cond_1

    .line 20
    .line 21
    if-lt v2, p1, :cond_1

    .line 22
    .line 23
    return-void

    .line 24
    :cond_1
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    .line 25
    .line 26
    const-string v2, "Invalid index "

    .line 27
    .line 28
    const-string v3, ", size is "

    .line 29
    .line 30
    invoke-static {v2, p1, v3}, Landroidx/appcompat/widget/v;->e(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {v0}, Lio/realm/internal/OsList;->W()J

    .line 35
    .line 36
    .line 37
    move-result-wide v2

    .line 38
    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-direct {v1, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    throw v1
.end method

.method public abstract c(Ljava/lang/Object;)V
.end method

.method public abstract d(I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation
.end method

.method public e(I)V
    .locals 3

    iget-object v0, p0, Lio/realm/x;->b:Lio/realm/internal/OsList;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lio/realm/internal/OsList;->A(J)V

    return-void
.end method

.method public abstract f(ILjava/lang/Object;)V
.end method

.method public g(I)V
    .locals 3

    iget-object v0, p0, Lio/realm/x;->b:Lio/realm/internal/OsList;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lio/realm/internal/OsList;->Q(J)V

    return-void
.end method

.method public abstract h(ILjava/lang/Object;)V
.end method
