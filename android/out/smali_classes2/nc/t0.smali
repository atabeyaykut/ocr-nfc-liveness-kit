.class public final Lnc/t0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnc/a0;


# static fields
.field public static final a:Lnc/t0;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lnc/t0;

    invoke-direct {v0}, Lnc/t0;-><init>()V

    sput-object v0, Lnc/t0;->a:Lnc/t0;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getCoroutineContext()Lp9/f;
    .locals 1

    sget-object v0, Lp9/g;->a:Lp9/g;

    return-object v0
.end method
