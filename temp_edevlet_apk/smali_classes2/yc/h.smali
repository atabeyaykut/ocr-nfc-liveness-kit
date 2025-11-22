.class public final Lyc/h;
.super Luc/a;
.source "SourceFile"


# instance fields
.field public final synthetic e:Lyc/r;

.field public final synthetic f:Lyc/f$d;

.field public final synthetic g:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lyc/r;Lyc/f$d;Ljava/util/List;)V
    .locals 0

    iput-object p2, p0, Lyc/h;->e:Lyc/r;

    iput-object p3, p0, Lyc/h;->f:Lyc/f$d;

    iput-object p4, p0, Lyc/h;->g:Ljava/util/List;

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Luc/a;-><init>(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lyc/h;->f:Lyc/f$d;

    .line 2
    .line 3
    iget-object v0, v0, Lyc/f$d;->b:Lyc/f;

    .line 4
    .line 5
    iget-object v0, v0, Lyc/f;->b:Lyc/f$c;

    .line 6
    .line 7
    iget-object v1, p0, Lyc/h;->e:Lyc/r;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lyc/f$c;->b(Lyc/r;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :catch_0
    move-exception v0

    .line 14
    sget-object v1, Lzc/h;->c:Lzc/h$a;

    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    sget-object v1, Lzc/h;->a:Lzc/h;

    .line 20
    .line 21
    new-instance v2, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    const-string v3, "Http2Connection.Listener failure for "

    .line 24
    .line 25
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iget-object v3, p0, Lyc/h;->f:Lyc/f$d;

    .line 29
    .line 30
    iget-object v3, v3, Lyc/f$d;->b:Lyc/f;

    .line 31
    .line 32
    iget-object v3, v3, Lyc/f;->d:Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    const/4 v1, 0x4

    .line 45
    invoke-static {v1, v2, v0}, Lzc/h;->i(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 46
    .line 47
    .line 48
    :try_start_1
    iget-object v1, p0, Lyc/h;->e:Lyc/r;

    .line 49
    .line 50
    sget-object v2, Lyc/b;->c:Lyc/b;

    .line 51
    .line 52
    invoke-virtual {v1, v2, v0}, Lyc/r;->c(Lyc/b;Ljava/io/IOException;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 53
    .line 54
    .line 55
    :catch_1
    :goto_0
    const-wide/16 v0, -0x1

    .line 56
    .line 57
    return-wide v0
.end method
