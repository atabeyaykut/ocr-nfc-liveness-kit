.class public final Lyc/f$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyc/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public a:Ljava/net/Socket;

.field public b:Ljava/lang/String;

.field public c:Led/g;

.field public d:Led/f;

.field public e:Lyc/f$c;

.field public final f:Lc5/v;

.field public g:I

.field public final h:Z

.field public final i:Luc/d;


# direct methods
.method public constructor <init>(Luc/d;)V
    .locals 1

    const-string v0, "taskRunner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lyc/f$b;->h:Z

    iput-object p1, p0, Lyc/f$b;->i:Luc/d;

    sget-object p1, Lyc/f$c;->a:Lyc/f$c$a;

    iput-object p1, p0, Lyc/f$b;->e:Lyc/f$c;

    sget-object p1, Lyc/u;->l0:Lc5/v;

    iput-object p1, p0, Lyc/f$b;->f:Lc5/v;

    return-void
.end method
