.class public final Lwc/g;
.super Lrc/d0;
.source "SourceFile"


# instance fields
.field public final b:Ljava/lang/String;

.field public final c:J

.field public final d:Led/g;


# direct methods
.method public constructor <init>(Ljava/lang/String;JLed/d0;)V
    .locals 0

    invoke-direct {p0}, Lrc/d0;-><init>()V

    iput-object p1, p0, Lwc/g;->b:Ljava/lang/String;

    iput-wide p2, p0, Lwc/g;->c:J

    iput-object p4, p0, Lwc/g;->d:Led/g;

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    iget-wide v0, p0, Lwc/g;->c:J

    return-wide v0
.end method

.method public final b()Lrc/t;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lwc/g;->b:Ljava/lang/String;

    .line 3
    .line 4
    if-eqz v1, :cond_0

    .line 5
    .line 6
    sget-object v2, Lrc/t;->f:Lrc/t$a;

    .line 7
    .line 8
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    :try_start_0
    invoke-static {v1}, Lrc/t$a;->a(Ljava/lang/String;)Lrc/t;

    .line 12
    .line 13
    .line 14
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    :catch_0
    :cond_0
    return-object v0
.end method

.method public final c()Led/g;
    .locals 1

    iget-object v0, p0, Lwc/g;->d:Led/g;

    return-object v0
.end method
