.class public final synthetic Ls4/y8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh5/f;


# instance fields
.field public final synthetic a:Ls4/z8;

.field public final synthetic b:J


# direct methods
.method public synthetic constructor <init>(Ls4/z8;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls4/y8;->a:Ls4/z8;

    iput-wide p2, p0, Ls4/y8;->b:J

    return-void
.end method


# virtual methods
.method public final e(Ljava/lang/Exception;)V
    .locals 2

    .line 1
    iget-object p1, p0, Ls4/y8;->a:Ls4/z8;

    .line 2
    .line 3
    iget-object p1, p1, Ls4/z8;->b:Ljava/util/concurrent/atomic/AtomicLong;

    .line 4
    .line 5
    iget-wide v0, p0, Ls4/y8;->b:J

    .line 6
    .line 7
    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
