.class public final Lm7/o$r$a;
.super Lj7/u;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lm7/o$r;->b(Lj7/h;Lp7/a;)Lj7/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lj7/u<",
        "Ljava/sql/Timestamp;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lj7/u;


# direct methods
.method public constructor <init>(Lj7/u;)V
    .locals 0

    iput-object p1, p0, Lm7/o$r$a;->a:Lj7/u;

    invoke-direct {p0}, Lj7/u;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lq7/a;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lm7/o$r$a;->a:Lj7/u;

    invoke-virtual {v0, p1}, Lj7/u;->a(Lq7/a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Date;

    if-eqz p1, :cond_0

    new-instance v0, Ljava/sql/Timestamp;

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/sql/Timestamp;-><init>(J)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final b(Lq7/b;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p2, Ljava/sql/Timestamp;

    .line 2
    .line 3
    iget-object v0, p0, Lm7/o$r$a;->a:Lj7/u;

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Lj7/u;->b(Lq7/b;Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
