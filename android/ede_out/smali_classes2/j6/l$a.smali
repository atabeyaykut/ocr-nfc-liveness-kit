.class public final Lj6/l$a;
.super Lj6/a0$e$d$a$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj6/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public a:Lj6/a0$e$d$a$b;

.field public b:Lj6/b0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj6/b0<",
            "Lj6/a0$c;",
            ">;"
        }
    .end annotation
.end field

.field public c:Lj6/b0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj6/b0<",
            "Lj6/a0$c;",
            ">;"
        }
    .end annotation
.end field

.field public d:Ljava/lang/Boolean;

.field public e:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Lj6/a0$e$d$a;)V
    .locals 1

    invoke-direct {p0}, Lj6/a0$e$d$a$a;-><init>()V

    invoke-virtual {p1}, Lj6/a0$e$d$a;->c()Lj6/a0$e$d$a$b;

    move-result-object v0

    iput-object v0, p0, Lj6/l$a;->a:Lj6/a0$e$d$a$b;

    invoke-virtual {p1}, Lj6/a0$e$d$a;->b()Lj6/b0;

    move-result-object v0

    iput-object v0, p0, Lj6/l$a;->b:Lj6/b0;

    invoke-virtual {p1}, Lj6/a0$e$d$a;->d()Lj6/b0;

    move-result-object v0

    iput-object v0, p0, Lj6/l$a;->c:Lj6/b0;

    invoke-virtual {p1}, Lj6/a0$e$d$a;->a()Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lj6/l$a;->d:Ljava/lang/Boolean;

    invoke-virtual {p1}, Lj6/a0$e$d$a;->e()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lj6/l$a;->e:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public final a()Lj6/l;
    .locals 8

    iget-object v0, p0, Lj6/l$a;->a:Lj6/a0$e$d$a$b;

    if-nez v0, :cond_0

    const-string v0, " execution"

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    iget-object v1, p0, Lj6/l$a;->e:Ljava/lang/Integer;

    if-nez v1, :cond_1

    const-string v1, " uiOrientation"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v0, Lj6/l;

    iget-object v3, p0, Lj6/l$a;->a:Lj6/a0$e$d$a$b;

    iget-object v4, p0, Lj6/l$a;->b:Lj6/b0;

    iget-object v5, p0, Lj6/l$a;->c:Lj6/b0;

    iget-object v6, p0, Lj6/l$a;->d:Ljava/lang/Boolean;

    iget-object v1, p0, Lj6/l$a;->e:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lj6/l;-><init>(Lj6/a0$e$d$a$b;Lj6/b0;Lj6/b0;Ljava/lang/Boolean;I)V

    return-object v0

    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Missing required properties:"

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
