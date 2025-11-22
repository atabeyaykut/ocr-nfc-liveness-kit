.class public final Lt3/c;
.super Ln3/c;
.source "SourceFile"


# static fields
.field public static final k:Ln3/a;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Ln3/a$f;

    invoke-direct {v0}, Ln3/a$f;-><init>()V

    new-instance v1, Lt3/b;

    invoke-direct {v1}, Lt3/b;-><init>()V

    new-instance v2, Ln3/a;

    const-string v3, "ClientTelemetry.API"

    invoke-direct {v2, v3, v1, v0}, Ln3/a;-><init>(Ljava/lang/String;Ln3/a$a;Ln3/a$f;)V

    sput-object v2, Lt3/c;->k:Ln3/a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lr3/w;)V
    .locals 2

    sget-object v0, Lt3/c;->k:Ln3/a;

    sget-object v1, Ln3/c$a;->c:Ln3/c$a;

    invoke-direct {p0, p1, v0, p2, v1}, Ln3/c;-><init>(Landroid/content/Context;Ln3/a;Ln3/a$c;Ln3/c$a;)V

    return-void
.end method


# virtual methods
.method public final d(Lr3/v;)Lh5/z;
    .locals 5

    .line 1
    new-instance v0, Lo3/m$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lo3/m$a;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    new-array v2, v1, [Lm3/d;

    .line 8
    .line 9
    sget-object v3, Lh4/f;->a:Lm3/d;

    .line 10
    .line 11
    const/4 v4, 0x0

    .line 12
    aput-object v3, v2, v4

    .line 13
    .line 14
    iput-object v2, v0, Lo3/m$a;->c:[Lm3/d;

    .line 15
    .line 16
    iput-boolean v4, v0, Lo3/m$a;->b:Z

    .line 17
    .line 18
    new-instance v2, Lcom/airbnb/epoxy/a;

    .line 19
    .line 20
    invoke-direct {v2, v1, p1}, Lcom/airbnb/epoxy/a;-><init>(ILjava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    iput-object v2, v0, Lo3/m$a;->a:Lo3/k;

    .line 24
    .line 25
    invoke-virtual {v0}, Lo3/m$a;->a()Lo3/q0;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    const/4 v0, 0x2

    .line 30
    invoke-virtual {p0, v0, p1}, Ln3/c;->c(ILo3/m;)Lh5/z;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    return-object p1
.end method
