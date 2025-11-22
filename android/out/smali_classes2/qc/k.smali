.class public final Lqc/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp9/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lp9/d<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lqc/k;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lqc/k;

    invoke-direct {v0}, Lqc/k;-><init>()V

    sput-object v0, Lqc/k;->a:Lqc/k;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getContext()Lp9/f;
    .locals 1

    sget-object v0, Lp9/g;->a:Lp9/g;

    return-object v0
.end method

.method public final resumeWith(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method
