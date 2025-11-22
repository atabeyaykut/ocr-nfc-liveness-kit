.class public final Lio/realm/d0$b;
.super Lio/realm/d0$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/d0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/realm/d0$a<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lio/realm/a;Lio/realm/internal/OsResults;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/a;",
            "Lio/realm/internal/OsResults;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3, p4}, Lio/realm/d0$a;-><init>(Lio/realm/a;Lio/realm/internal/OsResults;Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(I)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    iget-object v0, p0, Lio/realm/d0$a;->b:Lio/realm/internal/OsResults;

    invoke-virtual {v0, p1}, Lio/realm/internal/OsResults;->c(I)Lio/realm/internal/UncheckedRow;

    move-result-object p1

    iget-object v0, p0, Lio/realm/d0$a;->c:Ljava/lang/Class;

    iget-object v1, p0, Lio/realm/d0$a;->d:Ljava/lang/String;

    iget-object v2, p0, Lio/realm/d0$a;->a:Lio/realm/a;

    invoke-virtual {v2, v0, v1, p1}, Lio/realm/a;->g(Ljava/lang/Class;Ljava/lang/String;Lio/realm/internal/UncheckedRow;)Lio/realm/s0;

    move-result-object p1

    return-object p1
.end method

.method public final b(ILio/realm/internal/OsResults;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lio/realm/internal/OsResults;",
            ")TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p2, p1}, Lio/realm/internal/OsResults;->c(I)Lio/realm/internal/UncheckedRow;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object p2, p0, Lio/realm/d0$a;->a:Lio/realm/a;

    .line 6
    .line 7
    iget-object v0, p0, Lio/realm/d0$a;->c:Ljava/lang/Class;

    .line 8
    .line 9
    iget-object v1, p0, Lio/realm/d0$a;->d:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {p2, v0, v1, p1}, Lio/realm/a;->g(Ljava/lang/Class;Ljava/lang/String;Lio/realm/internal/UncheckedRow;)Lio/realm/s0;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method
