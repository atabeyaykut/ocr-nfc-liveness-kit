.class public final Lcom/airbnb/epoxy/j;
.super Lcom/airbnb/epoxy/g0;
.source "SourceFile"


# static fields
.field public static final c:Lcom/airbnb/epoxy/j$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/airbnb/epoxy/j$a;

    invoke-direct {v0}, Lcom/airbnb/epoxy/j$a;-><init>()V

    sput-object v0, Lcom/airbnb/epoxy/j;->c:Lcom/airbnb/epoxy/j$a;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/airbnb/epoxy/g0;-><init>(I)V

    .line 2
    .line 3
    .line 4
    iget-boolean p1, p0, Lcom/airbnb/epoxy/g0;->a:Z

    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    const/4 p1, 0x1

    .line 9
    iput-boolean p1, p0, Lcom/airbnb/epoxy/g0;->a:Z

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 13
    .line 14
    const-string v0, "Notifications already paused"

    .line 15
    .line 16
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    throw p1
.end method
