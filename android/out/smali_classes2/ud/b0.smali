.class public final Lud/b0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lud/b0$a;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/reflect/Method;

.field public final b:Lrc/r;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Lrc/q;

.field public final f:Lrc/t;

.field public final g:Z

.field public final h:Z

.field public final i:Z

.field public final j:[Lud/y;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lud/y<",
            "*>;"
        }
    .end annotation
.end field

.field public final k:Z


# direct methods
.method public constructor <init>(Lud/b0$a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lud/b0$a;->b:Ljava/lang/reflect/Method;

    iput-object v0, p0, Lud/b0;->a:Ljava/lang/reflect/Method;

    iget-object v0, p1, Lud/b0$a;->a:Lud/d0;

    iget-object v0, v0, Lud/d0;->c:Lrc/r;

    iput-object v0, p0, Lud/b0;->b:Lrc/r;

    iget-object v0, p1, Lud/b0$a;->n:Ljava/lang/String;

    iput-object v0, p0, Lud/b0;->c:Ljava/lang/String;

    iget-object v0, p1, Lud/b0$a;->r:Ljava/lang/String;

    iput-object v0, p0, Lud/b0;->d:Ljava/lang/String;

    iget-object v0, p1, Lud/b0$a;->s:Lrc/q;

    iput-object v0, p0, Lud/b0;->e:Lrc/q;

    iget-object v0, p1, Lud/b0$a;->t:Lrc/t;

    iput-object v0, p0, Lud/b0;->f:Lrc/t;

    iget-boolean v0, p1, Lud/b0$a;->o:Z

    iput-boolean v0, p0, Lud/b0;->g:Z

    iget-boolean v0, p1, Lud/b0$a;->p:Z

    iput-boolean v0, p0, Lud/b0;->h:Z

    iget-boolean v0, p1, Lud/b0$a;->q:Z

    iput-boolean v0, p0, Lud/b0;->i:Z

    iget-object v0, p1, Lud/b0$a;->v:[Lud/y;

    iput-object v0, p0, Lud/b0;->j:[Lud/y;

    iget-boolean p1, p1, Lud/b0$a;->w:Z

    iput-boolean p1, p0, Lud/b0;->k:Z

    return-void
.end method
