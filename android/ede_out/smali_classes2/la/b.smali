.class public final Lla/b;
.super Lja/k;
.source "SourceFile"


# static fields
.field public static final f:Lla/b;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lla/b;

    invoke-direct {v0}, Lla/b;-><init>()V

    sput-object v0, Lla/b;->f:Lla/b;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    new-instance v0, Lbc/c;

    const-string v1, "FallbackBuiltIns"

    invoke-direct {v0, v1}, Lbc/c;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lja/k;-><init>(Lbc/c;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lja/k;->d(Z)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic p()Loa/c;
    .locals 1

    sget-object v0, Loa/c$a;->a:Loa/c$a;

    return-object v0
.end method
