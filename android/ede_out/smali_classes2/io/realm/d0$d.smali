.class public final Lio/realm/d0$d;
.super Lio/realm/internal/OsResults$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/d0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/realm/internal/OsResults$b<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public final synthetic c:Lio/realm/d0;


# direct methods
.method public constructor <init>(Lio/realm/d0;I)V
    .locals 0

    iput-object p1, p0, Lio/realm/d0$d;->c:Lio/realm/d0;

    iget-object p1, p1, Lio/realm/d0;->d:Lio/realm/internal/OsResults;

    invoke-direct {p0, p2, p1}, Lio/realm/internal/OsResults$b;-><init>(ILio/realm/internal/OsResults;)V

    return-void
.end method


# virtual methods
.method public final b(ILio/realm/internal/OsResults;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lio/realm/internal/OsResults;",
            ")TE;"
        }
    .end annotation

    iget-object v0, p0, Lio/realm/d0$d;->c:Lio/realm/d0;

    iget-object v0, v0, Lio/realm/d0;->e:Lio/realm/d0$a;

    invoke-virtual {v0, p1, p2}, Lio/realm/d0$a;->b(ILio/realm/internal/OsResults;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
