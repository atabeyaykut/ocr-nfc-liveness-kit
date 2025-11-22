.class public final Lc5/h3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation build Landroidx/annotation/WorkerThread;
.end annotation


# instance fields
.field public final a:Lc5/g3;

.field public final b:I

.field public final c:Ljava/lang/Throwable;

.field public final d:[B

.field public final e:Ljava/lang/String;

.field public final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lc5/g3;ILjava/io/IOException;[BLjava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2}, Lr3/r;->i(Ljava/lang/Object;)V

    iput-object p2, p0, Lc5/h3;->a:Lc5/g3;

    iput p3, p0, Lc5/h3;->b:I

    iput-object p4, p0, Lc5/h3;->c:Ljava/lang/Throwable;

    iput-object p5, p0, Lc5/h3;->d:[B

    iput-object p1, p0, Lc5/h3;->e:Ljava/lang/String;

    iput-object p6, p0, Lc5/h3;->f:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lc5/h3;->a:Lc5/g3;

    iget-object v1, p0, Lc5/h3;->e:Ljava/lang/String;

    iget v2, p0, Lc5/h3;->b:I

    iget-object v3, p0, Lc5/h3;->c:Ljava/lang/Throwable;

    iget-object v4, p0, Lc5/h3;->d:[B

    iget-object v5, p0, Lc5/h3;->f:Ljava/util/Map;

    invoke-interface/range {v0 .. v5}, Lc5/g3;->a(Ljava/lang/String;ILjava/lang/Throwable;[BLjava/util/Map;)V

    return-void
.end method
