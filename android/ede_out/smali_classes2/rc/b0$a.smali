.class public final Lrc/b0$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrc/b0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Lrc/x;

.field public b:Lrc/w;

.field public c:I

.field public d:Ljava/lang/String;

.field public e:Lrc/p;

.field public f:Lrc/q$a;

.field public g:Lrc/d0;

.field public h:Lrc/b0;

.field public i:Lrc/b0;

.field public j:Lrc/b0;

.field public k:J

.field public l:J

.field public m:Lvc/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lrc/b0$a;->c:I

    new-instance v0, Lrc/q$a;

    invoke-direct {v0}, Lrc/q$a;-><init>()V

    iput-object v0, p0, Lrc/b0$a;->f:Lrc/q$a;

    return-void
.end method

.method public constructor <init>(Lrc/b0;)V
    .locals 2

    const-string v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lrc/b0;->b:Lrc/x;

    iput-object v0, p0, Lrc/b0$a;->a:Lrc/x;

    iget-object v0, p1, Lrc/b0;->c:Lrc/w;

    iput-object v0, p0, Lrc/b0$a;->b:Lrc/w;

    iget v0, p1, Lrc/b0;->e:I

    iput v0, p0, Lrc/b0$a;->c:I

    iget-object v0, p1, Lrc/b0;->d:Ljava/lang/String;

    iput-object v0, p0, Lrc/b0$a;->d:Ljava/lang/String;

    iget-object v0, p1, Lrc/b0;->f:Lrc/p;

    iput-object v0, p0, Lrc/b0$a;->e:Lrc/p;

    iget-object v0, p1, Lrc/b0;->g:Lrc/q;

    invoke-virtual {v0}, Lrc/q;->u()Lrc/q$a;

    move-result-object v0

    iput-object v0, p0, Lrc/b0$a;->f:Lrc/q$a;

    iget-object v0, p1, Lrc/b0;->h:Lrc/d0;

    iput-object v0, p0, Lrc/b0$a;->g:Lrc/d0;

    iget-object v0, p1, Lrc/b0;->j:Lrc/b0;

    iput-object v0, p0, Lrc/b0$a;->h:Lrc/b0;

    iget-object v0, p1, Lrc/b0;->k:Lrc/b0;

    iput-object v0, p0, Lrc/b0$a;->i:Lrc/b0;

    iget-object v0, p1, Lrc/b0;->l:Lrc/b0;

    iput-object v0, p0, Lrc/b0$a;->j:Lrc/b0;

    iget-wide v0, p1, Lrc/b0;->m:J

    iput-wide v0, p0, Lrc/b0$a;->k:J

    iget-wide v0, p1, Lrc/b0;->n:J

    iput-wide v0, p0, Lrc/b0$a;->l:J

    iget-object p1, p1, Lrc/b0;->p:Lvc/c;

    iput-object p1, p0, Lrc/b0$a;->m:Lvc/c;

    return-void
.end method

.method public static b(Ljava/lang/String;Lrc/b0;)V
    .locals 3

    if-eqz p1, :cond_8

    iget-object v0, p1, Lrc/b0;->h:Lrc/d0;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_7

    iget-object v0, p1, Lrc/b0;->j:Lrc/b0;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_6

    iget-object v0, p1, Lrc/b0;->k:Lrc/b0;

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_5

    iget-object p1, p1, Lrc/b0;->l:Lrc/b0;

    if-nez p1, :cond_3

    const/4 v1, 0x1

    :cond_3
    if-eqz v1, :cond_4

    goto :goto_3

    :cond_4
    const-string p1, ".priorResponse != null"

    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    const-string p1, ".cacheResponse != null"

    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    const-string p1, ".networkResponse != null"

    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    const-string p1, ".body != null"

    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    :goto_3
    return-void
.end method


# virtual methods
.method public final a()Lrc/b0;
    .locals 18

    move-object/from16 v0, p0

    iget v5, v0, Lrc/b0$a;->c:I

    if-ltz v5, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_4

    iget-object v2, v0, Lrc/b0$a;->a:Lrc/x;

    if-eqz v2, :cond_3

    iget-object v3, v0, Lrc/b0$a;->b:Lrc/w;

    if-eqz v3, :cond_2

    iget-object v4, v0, Lrc/b0$a;->d:Ljava/lang/String;

    if-eqz v4, :cond_1

    iget-object v6, v0, Lrc/b0$a;->e:Lrc/p;

    iget-object v1, v0, Lrc/b0$a;->f:Lrc/q$a;

    invoke-virtual {v1}, Lrc/q$a;->c()Lrc/q;

    move-result-object v7

    iget-object v8, v0, Lrc/b0$a;->g:Lrc/d0;

    iget-object v9, v0, Lrc/b0$a;->h:Lrc/b0;

    iget-object v10, v0, Lrc/b0$a;->i:Lrc/b0;

    iget-object v11, v0, Lrc/b0$a;->j:Lrc/b0;

    iget-wide v12, v0, Lrc/b0$a;->k:J

    iget-wide v14, v0, Lrc/b0$a;->l:J

    iget-object v1, v0, Lrc/b0$a;->m:Lvc/c;

    new-instance v17, Lrc/b0;

    move-object/from16 v16, v1

    move-object/from16 v1, v17

    invoke-direct/range {v1 .. v16}, Lrc/b0;-><init>(Lrc/x;Lrc/w;Ljava/lang/String;ILrc/p;Lrc/q;Lrc/d0;Lrc/b0;Lrc/b0;Lrc/b0;JJLvc/c;)V

    return-object v17

    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "message == null"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "protocol == null"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "request == null"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "code < 0: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v0, Lrc/b0$a;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
