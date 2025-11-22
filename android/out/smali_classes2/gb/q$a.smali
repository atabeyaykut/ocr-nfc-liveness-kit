.class public final Lgb/q$a;
.super Lmb/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgb/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmb/b<",
        "Lgb/q;",
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

    new-instance v0, Lgb/q;

    invoke-direct {v0, p1, p2}, Lgb/q;-><init>(Lmb/d;Lmb/f;)V

    return-object v0
.end method
