.class public final Lgb/o$a;
.super Lmb/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgb/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmb/b<",
        "Lgb/o;",
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
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmb/j;
        }
    .end annotation

    new-instance p2, Lgb/o;

    invoke-direct {p2, p1}, Lgb/o;-><init>(Lmb/d;)V

    return-object p2
.end method
