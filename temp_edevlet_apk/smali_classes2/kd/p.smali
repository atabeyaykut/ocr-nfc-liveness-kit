.class public final Lkd/p;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkd/p$a;
    }
.end annotation


# static fields
.field public static final c:Lkd/p;


# instance fields
.field public a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lkd/p$a;",
            ">;"
        }
    .end annotation
.end field

.field public b:Lkd/p$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkd/p;

    invoke-direct {v0}, Lkd/p;-><init>()V

    sput-object v0, Lkd/p;->c:Lkd/p;

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "HH:mm:ss.SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lkd/p;->a:Ljava/util/ArrayList;

    .line 10
    .line 11
    new-instance v0, Ljava/util/Date;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lkd/p;->b:Lkd/p$a;

    .line 17
    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    new-instance v0, Ljava/util/Date;

    .line 21
    .line 22
    iget-object v1, p0, Lkd/p;->b:Lkd/p$a;

    .line 23
    .line 24
    iget-object v1, v1, Lkd/p$a;->a:Ljava/util/Date;

    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    .line 27
    .line 28
    .line 29
    move-result-wide v1

    .line 30
    const-wide/16 v3, 0x0

    .line 31
    .line 32
    add-long/2addr v1, v3

    .line 33
    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 34
    .line 35
    .line 36
    iget-object v1, p0, Lkd/p;->b:Lkd/p$a;

    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    :cond_0
    new-instance v1, Lkd/p$a;

    .line 42
    .line 43
    invoke-direct {v1}, Lkd/p$a;-><init>()V

    .line 44
    .line 45
    .line 46
    iput-object v1, p0, Lkd/p;->b:Lkd/p$a;

    .line 47
    .line 48
    iput-object v0, v1, Lkd/p$a;->a:Ljava/util/Date;

    .line 49
    .line 50
    iget-object v0, p0, Lkd/p;->a:Ljava/util/ArrayList;

    .line 51
    .line 52
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    return-void
.end method
