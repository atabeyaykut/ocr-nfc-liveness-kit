.class public final Lp4/c7;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lc5/c4;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lp4/c7;->b:Ljava/lang/Object;

    iput-object p2, p0, Lp4/c7;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lk9/a;Lk9/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp4/c7;->a:Ljava/lang/Object;

    iput-object p2, p0, Lp4/c7;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lpf/k;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lr4/a6;

    invoke-direct {v0}, Lr4/a6;-><init>()V

    iput-object v0, p0, Lp4/c7;->b:Ljava/lang/Object;

    iput-object p1, p0, Lp4/c7;->a:Ljava/lang/Object;

    invoke-static {}, Lr4/t6;->a()V

    return-void
.end method
