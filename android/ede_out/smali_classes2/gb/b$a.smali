.class public final Lgb/b$a;
.super Lmb/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgb/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmb/b<",
        "Lgb/b;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lmb/b;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lmb/d;Lmb/f;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmb/j;
        }
    .end annotation

    .line 1
    new-instance v0, Lgb/b;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2}, Lgb/b;-><init>(Lmb/d;Lmb/f;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method
