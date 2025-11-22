package androidx.navigation;

import android.net.Uri;
import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.browser.browseractions.a;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* loaded from: classes.dex */
public final class NavDeepLink {
    private static final Pattern SCHEME_PATTERN = Pattern.compile("^[a-zA-Z]+[+\\w\\-.]*:");
    private final String mAction;
    private final ArrayList<String> mArguments;
    private boolean mExactDeepLink;
    private boolean mIsParameterizedQuery;
    private final String mMimeType;
    private Pattern mMimeTypePattern;
    private final Map<String, ParamQuery> mParamArgMap;
    private Pattern mPattern;
    private final String mUri;

    public static final class Builder {
        private String mAction;
        private String mMimeType;
        private String mUriPattern;

        @NonNull
        public static Builder fromAction(@NonNull String str) {
            if (str.isEmpty()) {
                throw new IllegalArgumentException("The NavDeepLink cannot have an empty action.");
            }
            Builder builder = new Builder();
            builder.setAction(str);
            return builder;
        }

        @NonNull
        public static Builder fromMimeType(@NonNull String str) {
            Builder builder = new Builder();
            builder.setMimeType(str);
            return builder;
        }

        @NonNull
        public static Builder fromUriPattern(@NonNull String str) {
            Builder builder = new Builder();
            builder.setUriPattern(str);
            return builder;
        }

        @NonNull
        public NavDeepLink build() {
            return new NavDeepLink(this.mUriPattern, this.mAction, this.mMimeType);
        }

        @NonNull
        public Builder setAction(@NonNull String str) {
            if (str.isEmpty()) {
                throw new IllegalArgumentException("The NavDeepLink cannot have an empty action.");
            }
            this.mAction = str;
            return this;
        }

        @NonNull
        public Builder setMimeType(@NonNull String str) {
            this.mMimeType = str;
            return this;
        }

        @NonNull
        public Builder setUriPattern(@NonNull String str) {
            this.mUriPattern = str;
            return this;
        }
    }

    public static class MimeType implements Comparable<MimeType> {
        String mSubType;
        String mType;

        public MimeType(@NonNull String str) {
            String[] strArrSplit = str.split("/", -1);
            this.mType = strArrSplit[0];
            this.mSubType = strArrSplit[1];
        }

        @Override // java.lang.Comparable
        public int compareTo(@NonNull MimeType mimeType) {
            int r02 = this.mType.equals(mimeType.mType) ? 2 : 0;
            return this.mSubType.equals(mimeType.mSubType) ? r02 + 1 : r02;
        }
    }

    public static class ParamQuery {
        private ArrayList<String> mArguments = new ArrayList<>();
        private String mParamRegex;

        public void addArgumentName(String str) {
            this.mArguments.add(str);
        }

        public String getArgumentName(int r22) {
            return this.mArguments.get(r22);
        }

        public String getParamRegex() {
            return this.mParamRegex;
        }

        public void setParamRegex(String str) {
            this.mParamRegex = str;
        }

        public int size() {
            return this.mArguments.size();
        }
    }

    public NavDeepLink(@NonNull String str) {
        this(str, null, null);
    }

    public NavDeepLink(@Nullable String str, @Nullable String str2, @Nullable String str3) {
        this.mArguments = new ArrayList<>();
        this.mParamArgMap = new HashMap();
        this.mPattern = null;
        this.mExactDeepLink = false;
        this.mIsParameterizedQuery = false;
        this.mMimeTypePattern = null;
        this.mUri = str;
        this.mAction = str2;
        this.mMimeType = str3;
        if (str != null) {
            Uri uri = Uri.parse(str);
            this.mIsParameterizedQuery = uri.getQuery() != null;
            StringBuilder sb2 = new StringBuilder("^");
            if (!SCHEME_PATTERN.matcher(str).find()) {
                sb2.append("http[s]?://");
            }
            Pattern patternCompile = Pattern.compile("\\{(.+?)\\}");
            if (this.mIsParameterizedQuery) {
                Matcher matcher = Pattern.compile("(\\?)").matcher(str);
                if (matcher.find()) {
                    buildPathRegex(str.substring(0, matcher.start()), sb2, patternCompile);
                }
                this.mExactDeepLink = false;
                for (String str4 : uri.getQueryParameterNames()) {
                    StringBuilder sb3 = new StringBuilder();
                    String queryParameter = uri.getQueryParameter(str4);
                    Matcher matcher2 = patternCompile.matcher(queryParameter);
                    ParamQuery paramQuery = new ParamQuery();
                    int r10 = 0;
                    while (matcher2.find()) {
                        paramQuery.addArgumentName(matcher2.group(1));
                        sb3.append(Pattern.quote(queryParameter.substring(r10, matcher2.start())));
                        sb3.append("(.+?)?");
                        r10 = matcher2.end();
                    }
                    if (r10 < queryParameter.length()) {
                        sb3.append(Pattern.quote(queryParameter.substring(r10)));
                    }
                    paramQuery.setParamRegex(sb3.toString().replace(".*", "\\E.*\\Q"));
                    this.mParamArgMap.put(str4, paramQuery);
                }
            } else {
                this.mExactDeepLink = buildPathRegex(str, sb2, patternCompile);
            }
            this.mPattern = Pattern.compile(sb2.toString().replace(".*", "\\E.*\\Q"), 2);
        }
        if (str3 != null) {
            if (!Pattern.compile("^[\\s\\S]+/[\\s\\S]+$").matcher(str3).matches()) {
                throw new IllegalArgumentException(a.a("The given mimeType ", str3, " does not match to required \"type/subtype\" format"));
            }
            MimeType mimeType = new MimeType(str3);
            this.mMimeTypePattern = Pattern.compile(("^(" + mimeType.mType + "|[*]+)/(" + mimeType.mSubType + "|[*]+)$").replace("*|[*]", "[\\s\\S]"));
        }
    }

    private boolean buildPathRegex(@NonNull String str, StringBuilder sb2, Pattern pattern) {
        Matcher matcher = pattern.matcher(str);
        boolean z10 = !str.contains(".*");
        int r32 = 0;
        while (matcher.find()) {
            this.mArguments.add(matcher.group(1));
            sb2.append(Pattern.quote(str.substring(r32, matcher.start())));
            sb2.append("(.+?)");
            r32 = matcher.end();
            z10 = false;
        }
        if (r32 < str.length()) {
            sb2.append(Pattern.quote(str.substring(r32)));
        }
        sb2.append("($|(\\?(.)*))");
        return z10;
    }

    private boolean matchAction(String str) {
        boolean z10 = str == null;
        String str2 = this.mAction;
        if (z10 == (str2 != null)) {
            return false;
        }
        return str == null || str2.equals(str);
    }

    private boolean matchMimeType(String str) {
        if ((str == null) == (this.mMimeType != null)) {
            return false;
        }
        return str == null || this.mMimeTypePattern.matcher(str).matches();
    }

    private boolean matchUri(Uri uri) {
        boolean z10 = uri == null;
        Pattern pattern = this.mPattern;
        if (z10 == (pattern != null)) {
            return false;
        }
        return uri == null || pattern.matcher(uri.toString()).matches();
    }

    private boolean parseArgument(Bundle bundle, String str, String str2, NavArgument navArgument) {
        if (navArgument == null) {
            bundle.putString(str, str2);
            return false;
        }
        try {
            navArgument.getType().parseAndPut(bundle, str, str2);
            return false;
        } catch (IllegalArgumentException unused) {
            return true;
        }
    }

    @Nullable
    public String getAction() {
        return this.mAction;
    }

    @Nullable
    public Bundle getMatchingArguments(@NonNull Uri uri, @NonNull Map<String, NavArgument> map) {
        Matcher matcher;
        Matcher matcher2 = this.mPattern.matcher(uri.toString());
        if (!matcher2.matches()) {
            return null;
        }
        Bundle bundle = new Bundle();
        int size = this.mArguments.size();
        int r52 = 0;
        while (r52 < size) {
            String str = this.mArguments.get(r52);
            r52++;
            if (parseArgument(bundle, str, Uri.decode(matcher2.group(r52)), map.get(str))) {
                return null;
            }
        }
        if (this.mIsParameterizedQuery) {
            for (String str2 : this.mParamArgMap.keySet()) {
                ParamQuery paramQuery = this.mParamArgMap.get(str2);
                String queryParameter = uri.getQueryParameter(str2);
                if (queryParameter != null) {
                    matcher = Pattern.compile(paramQuery.getParamRegex()).matcher(queryParameter);
                    if (!matcher.matches()) {
                        return null;
                    }
                } else {
                    matcher = null;
                }
                for (int r6 = 0; r6 < paramQuery.size(); r6++) {
                    String strDecode = matcher != null ? Uri.decode(matcher.group(r6 + 1)) : null;
                    String argumentName = paramQuery.getArgumentName(r6);
                    NavArgument navArgument = map.get(argumentName);
                    if (strDecode != null && !strDecode.replaceAll("[{}]", "").equals(argumentName) && parseArgument(bundle, argumentName, strDecode, navArgument)) {
                        return null;
                    }
                }
            }
        }
        return bundle;
    }

    @Nullable
    public String getMimeType() {
        return this.mMimeType;
    }

    public int getMimeTypeMatchRating(@NonNull String str) {
        if (this.mMimeType == null || !this.mMimeTypePattern.matcher(str).matches()) {
            return -1;
        }
        return new MimeType(this.mMimeType).compareTo(new MimeType(str));
    }

    @Nullable
    public String getUriPattern() {
        return this.mUri;
    }

    public boolean isExactDeepLink() {
        return this.mExactDeepLink;
    }

    public boolean matches(@NonNull Uri uri) {
        return matches(new NavDeepLinkRequest(uri, null, null));
    }

    public boolean matches(@NonNull NavDeepLinkRequest navDeepLinkRequest) {
        if (matchUri(navDeepLinkRequest.getUri()) && matchAction(navDeepLinkRequest.getAction())) {
            return matchMimeType(navDeepLinkRequest.getMimeType());
        }
        return false;
    }
}
