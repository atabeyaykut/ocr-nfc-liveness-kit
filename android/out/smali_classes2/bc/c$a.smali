.class public final Lbc/c$a;
.super Lbc/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbc/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    sget-object v0, Lx5/a;->b:Lx5/a;

    .line 2
    .line 3
    const-string v1, "NO_LOCKS"

    .line 4
    .line 5
    invoke-direct {p0, v1, v0}, Lbc/c;-><init>(Ljava/lang/String;Lbc/k;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final k(Ljava/lang/Object;Ljava/lang/String;)Lbc/c$m;
    .locals 1

    new-instance p1, Lbc/c$m;

    const/4 p2, 0x1

    const/4 v0, 0x0

    invoke-direct {p1, v0, p2}, Lbc/c$m;-><init>(Ljava/lang/Object;Z)V

    return-object p1
.end method
