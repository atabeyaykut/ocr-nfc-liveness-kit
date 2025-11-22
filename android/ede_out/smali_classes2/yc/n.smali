.class public final Lyc/n;
.super Luc/a;
.source "SourceFile"


# instance fields
.field public final synthetic e:Lyc/f;

.field public final synthetic f:I

.field public final synthetic g:Lyc/b;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lyc/f;ILyc/b;)V
    .locals 0

    iput-object p2, p0, Lyc/n;->e:Lyc/f;

    iput p3, p0, Lyc/n;->f:I

    iput-object p4, p0, Lyc/n;->g:Lyc/b;

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Luc/a;-><init>(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 3

    .line 1
    iget-object v0, p0, Lyc/n;->e:Lyc/f;

    .line 2
    .line 3
    iget-object v0, v0, Lyc/f;->m:Lc5/v;

    .line 4
    .line 5
    iget-object v1, p0, Lyc/n;->g:Lyc/b;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    const-string v0, "errorCode"

    .line 11
    .line 12
    invoke-static {v1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lyc/n;->e:Lyc/f;

    .line 16
    .line 17
    monitor-enter v0

    .line 18
    :try_start_0
    iget-object v1, p0, Lyc/n;->e:Lyc/f;

    .line 19
    .line 20
    iget-object v1, v1, Lyc/f;->D:Ljava/util/LinkedHashSet;

    .line 21
    .line 22
    iget v2, p0, Lyc/n;->f:I

    .line 23
    .line 24
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    sget-object v1, Ll9/m;->a:Ll9/m;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    .line 33
    monitor-exit v0

    .line 34
    const-wide/16 v0, -0x1

    .line 35
    .line 36
    return-wide v0

    .line 37
    :catchall_0
    move-exception v1

    .line 38
    monitor-exit v0

    .line 39
    throw v1
.end method
